#include <iostream>
#include "enet.h"

#define SERVER_PORT 1234

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
    ENetHost* server;

    address.ipv6 = ENET_HOST_ANY;
    address.port = SERVER_PORT;

    std::cout << "Create Server Host" << std::endl;
    server = enet_host_create (& address /* the address to bind the server host to */,
                               32      /* allow up to 32 clients and/or outgoing connections */,
                               2      /* allow up to 2 channels to be used, 0 and 1 */,
                               0      /* assume any amount of incoming bandwidth */,
                               0      /* assume any amount of outgoing bandwidth */,
                               0);

    if (server == nullptr)
    {
        fprintf (stderr, "An error occurred while trying to create an ENet server host.\n");
        exit (EXIT_FAILURE);
    }

    ENetEvent event;
    std::cout << "Start Server Service" << std::endl;
    /* Wait up to 1000 milliseconds for an event. */
    while (enet_host_service (server, & event, 1000) >= 0)
    {
        switch (event.type)
        {
            case ENET_EVENT_TYPE_CONNECT:
                printf ("A new client connected from %x:%u.\n",
                        event.peer -> address.ipv6,
                        event.peer -> address.port);
                /* Store any relevant client information here. */
                event.peer -> data = (void *) "Client information";
                break;
            case ENET_EVENT_TYPE_RECEIVE:
                printf ("A packet of length %u containing %s was received from %s on channel %u.\n",
                        event.packet -> dataLength,
                        event.packet -> data,
                        event.peer -> data,
                        event.channelID);
                /* Clean up the packet now that we're done using it. */
                enet_packet_destroy (event.packet);

                break;

            case ENET_EVENT_TYPE_DISCONNECT:
                printf ("%s disconnected.\n", event.peer -> data);
                /* Reset the peer's client information. */
                event.peer -> data = nullptr;
                break;
            case ENET_EVENT_TYPE_NONE:
                std::cout << "Service Event None " << std::endl;
                break;
        }
    }

    std::cout << "Destroy Server Host" << std::endl;
    enet_host_destroy(server);
    return 0;
}
