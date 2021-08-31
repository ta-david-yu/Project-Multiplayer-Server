#include <enet.h>
#include <cstdio>
#include <cstring>
#include <iostream>
#include <cstdlib>

int main(int argc, char** argv)
{
    if (enet_initialize() != 0) {
        printf("Could not initialize enet.\n");
        system("pause");
        return 0;
    }
    atexit(enet_deinitialize);

    ENetHost* client;

    client = enet_host_create(nullptr, 1, 2, 0, 0, 0);

    if (client == nullptr) {
        printf("Could not create client.\n");
        system("pause");
        return 0;
    }

    ENetAddress address;
    ENetEvent event;
    ENetPeer* peer;

    /* Connect to some.server.net:1234. */
    enet_address_set_hostname(&address, "127.0.0.1");
    address.port = 1234;

    /* Initiate the connection, allocating the two channels 0 and 1. */
    peer = enet_host_connect(client, &address, 2, 0);
    if (peer == nullptr)
    {
        fprintf(stderr,
                "No available peers for initiating an ENet connection.\n");
        system("pause");
        exit(EXIT_FAILURE);
    }

    /* Wait up to 5 seconds for the connection attempt to succeed. */
    if (enet_host_service(client, &event, 5000) > 0 &&
        event.type == ENET_EVENT_TYPE_CONNECT)
    {
        puts("Connection to 127.0.0.1:1234 succeeded.");
        enet_host_flush(client);
    }
    else
    {
        /* Either the 5 seconds are up or a disconnect event was */
        /* received. Reset the peer in the event the 5 seconds   */
        /* had run out without any significant event.            */
        enet_peer_reset(peer);
        puts("Connection to 127.0.0.1:1234 failed.");
        exit(EXIT_FAILURE);
    }

    while (enet_host_service(client, &event, 1000) > 0)
    {
        switch (event.type)
        {
            case ENET_EVENT_TYPE_RECEIVE:
                printf("A packet of length %u containing %s was received from %x:%u on channel %u.\n",
                       event.packet->dataLength,
                       event.packet->data,
                       event.peer->address.ipv6,
                       event.peer->address.port,
                       event.channelID);
                break;
        }
    }

    enet_peer_disconnect(peer, 0);

    while (enet_host_service(client, &event, 3000) > 0)
    {
        switch (event.type)
        {
            case ENET_EVENT_TYPE_RECEIVE:
                enet_packet_destroy(event.packet);
                break;
            case ENET_EVENT_TYPE_DISCONNECT:
                puts("DISCONNECTED!");
                break;
        }
    }

    system("pause");
}