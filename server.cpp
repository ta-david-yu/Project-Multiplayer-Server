#include <iostream>
#include <map>
#include <string>
#include <cstring>
#include "enet.h"

#define SERVER_PORT 1234

enum class PacketId : std::uint8_t
{
    LoginRequest = 1,
    LoginResponse = 2,
    LoginEvent = 3,
    PositionUpdateRequest = 4,
    PositionUpdateEvent = 5,
    LogoutEvent = 6
};

using PlayerId = std::uint32_t;
struct Position
{
    float x;
    float y;

    Position(float _x, float _y) : x(_x), y(_y) {}
};

ENetHost* m_Server = nullptr;
std::map<PlayerId, Position> m_PlayerPositions;

void handleReceivedPacket(ENetEvent& event);
void handleDisconnect(PlayerId disconnectedPlayerId);

void sendLoginResponse(ENetPeer& peer, PlayerId assignedPlayerId);
void sendLoginEvent(ENetPeer& peer, PlayerId loggedInPlayerId);
void broadcastLoginEvent(PlayerId loggedInPlayerId);
void broadcastLogoutEvent(PlayerId disconnectedPlayerId);
void broadcastPositionUpdateEvent(PlayerId playerId, float x, float y, int facing);

int main()
{
    auto enetStatus = enet_initialize();
    if (enetStatus != 0)
    {
        fprintf(stderr, "An error occurred while initializing ENet!\n");
        return EXIT_FAILURE;
    }

    atexit(enet_deinitialize);

    //
    ENetAddress address;

    address.ipv6 = ENET_HOST_ANY;
    address.port = SERVER_PORT;

    m_Server = enet_host_create (& address /* the address to bind the m_Server host to */,
                                 32      /* allow up to 32 clients and/or outgoing connections */,
                                 2      /* allow up to 2 channels to be used, 0 and 1 */,
                                 0      /* assume any amount of incoming bandwidth */,
                                 0      /* assume any amount of outgoing bandwidth */,
                                 0);

    if (m_Server == nullptr)
    {
        fprintf (stderr, "An error occurred while trying to create an ENet m_Server host.\n");
        exit (EXIT_FAILURE);
    }

    ENetEvent event;
    std::cout << "Start Server Service at port " << SERVER_PORT << std::endl;
    /* Wait up to 1000 milliseconds for an event. */
    while (enet_host_service (m_Server, & event, 1000) >= 0)
    {
        switch (event.type)
        {
            case ENET_EVENT_TYPE_CONNECT:
                printf ("A new player connected from %x:%u.\n",
                        event.peer -> address.ipv6,
                        event.peer -> address.port);

                enet_peer_timeout(event.peer, 32, 1000, 4000);
                // Store any relevant client information here.
                event.peer -> data = (void *) "Player";
                break;
            case ENET_EVENT_TYPE_RECEIVE:

                // Handle Packet
                handleReceivedPacket(event);

                // Clean up the packet now that we're done using it
                enet_packet_destroy (event.packet);

                break;
            case ENET_EVENT_TYPE_DISCONNECT_TIMEOUT:
                printf ("%s timeout.\n", event.peer->data);

                // Handle logout
                handleDisconnect(event.peer->connectID);

                // Reset the peer's client information
                event.peer -> data = nullptr;
                break;
            case ENET_EVENT_TYPE_DISCONNECT:
                printf ("%s disconnected.\n", event.peer->data);

                // Handle logout
                handleDisconnect(event.peer->connectID);

                // Reset the peer's client information
                event.peer -> data = nullptr;
                break;
            case ENET_EVENT_TYPE_NONE:
                break;
        }
    }

    std::cout << "Destroy Server Host" << std::endl;
    enet_host_destroy(m_Server);
    return 0;
}

void handleReceivedPacket(ENetEvent& event)
{
    PacketId packetId;

    std::memcpy(&packetId, event.packet->data, sizeof(PacketId));


    if (packetId != PacketId::PositionUpdateRequest)
    {
        printf("A packet received (length %u) from player %u on channel %u.\n",
               event.packet->dataLength,
               event.peer->connectID,
               event.channelID);
    }

    if (packetId == PacketId::LoginRequest)
    {
        PlayerId playerId = event.peer->connectID;
        sendLoginResponse(*event.peer, playerId);

        // broadcast the login event to all the other players
        broadcastLoginEvent(playerId);

        // send login events of all the other players to the newly connected client
        for (auto& playerPair : m_PlayerPositions)
        {
            sendLoginEvent(*event.peer, playerPair.first);
        }

        m_PlayerPositions.insert(std::pair<PlayerId, Position>(playerId, Position { 0, 0 }));
        printf("Num Of Players: %u\n", m_PlayerPositions.size());
    }
    else if (packetId == PacketId::PositionUpdateRequest)
    {
        PlayerId playerId = 0;
        float x = 0;
        float y = 0;
        int facing = 1;

        std::memcpy(&playerId, event.packet->data + sizeof(PacketId), sizeof(PlayerId));
        std::memcpy(&x, event.packet->data + sizeof(PacketId) + sizeof(playerId), sizeof(float));
        std::memcpy(&y, event.packet->data + sizeof(PacketId) + sizeof(playerId) + sizeof(float), sizeof(float));
        std::memcpy(&facing, event.packet->data + sizeof(PacketId) + sizeof(playerId) + sizeof(float) + sizeof(float), sizeof(int));

        broadcastPositionUpdateEvent(playerId, x, y, facing);
    }

}

void handleDisconnect(PlayerId disconnectedPlayerId)
{
    auto pair = m_PlayerPositions.find(disconnectedPlayerId);
    if (pair == m_PlayerPositions.end())
        return;

    m_PlayerPositions.erase(pair);
    broadcastLogoutEvent(disconnectedPlayerId);
}

void sendLoginResponse(ENetPeer& peer, PlayerId assignedPlayerId)
{
    PacketId packetId = PacketId::LoginResponse;
    std::uint8_t buffer[5];

    std::memcpy(buffer, &packetId, sizeof(PacketId));
    std::memcpy(buffer + sizeof(PacketId), &assignedPlayerId, sizeof(PlayerId));

    ENetPacket* packet = enet_packet_create(buffer, 5, ENET_PACKET_FLAG_RELIABLE);
    enet_peer_send(&peer, 0, packet);
}

void sendLoginEvent(ENetPeer& peer, PlayerId loggedInPlayerId)
{
    PacketId packetId = PacketId::LoginEvent;
    std::uint8_t buffer[5];

    std::memcpy(buffer, &packetId, sizeof(PacketId));
    std::memcpy(buffer + sizeof(PacketId), &loggedInPlayerId, sizeof(PlayerId));

    ENetPacket* packet = enet_packet_create(buffer, 5, ENET_PACKET_FLAG_RELIABLE);
    enet_peer_send(&peer, 0, packet);
}

void broadcastLoginEvent(PlayerId loggedInPlayerId)
{
    PacketId packetId = PacketId::LoginEvent;
    std::uint8_t buffer[5];

    std::memcpy(buffer, &packetId, sizeof(PacketId));
    std::memcpy(buffer + sizeof(PacketId), &loggedInPlayerId, sizeof(PlayerId));

    ENetPacket* packet = enet_packet_create(buffer, 5, ENET_PACKET_FLAG_RELIABLE);
    enet_host_broadcast(m_Server, 0, packet);
}

void broadcastLogoutEvent(PlayerId disconnectedPlayerId)
{
    PacketId packetId = PacketId::LogoutEvent;
    std::uint8_t buffer[5];

    std::memcpy(buffer, &packetId, sizeof(PacketId));
    std::memcpy(buffer + sizeof(PacketId), &disconnectedPlayerId, sizeof(PlayerId));

    ENetPacket* packet = enet_packet_create(buffer, 5, ENET_PACKET_FLAG_RELIABLE);
    enet_host_broadcast(m_Server, 0, packet);
}

void broadcastPositionUpdateEvent(PlayerId playerId, float x, float y, int facing)
{
//    std::cout << "Broadcast Pos: " << x << ", " << y << ", facing: " << facing << std::endl;

    PacketId packetId = PacketId::PositionUpdateEvent;
    std::uint8_t buffer[13];

    std::uint8_t* bufferWriterPtr = buffer;

    std::memcpy(bufferWriterPtr, &packetId, sizeof(PacketId));

    bufferWriterPtr += sizeof(PacketId);
    std::memcpy(bufferWriterPtr, &playerId, sizeof(PlayerId));

    bufferWriterPtr += sizeof(PlayerId);
    std::memcpy(bufferWriterPtr, &x, sizeof(float));

    bufferWriterPtr += sizeof(float);
    std::memcpy(bufferWriterPtr, &y, sizeof(float));

    bufferWriterPtr += sizeof(float);
    std::memcpy(bufferWriterPtr, &facing, sizeof(int));

    ENetPacket* packet = enet_packet_create(buffer, 17, ENET_PACKET_FLAG_NONE);
    enet_host_broadcast(m_Server, 0, packet);
}