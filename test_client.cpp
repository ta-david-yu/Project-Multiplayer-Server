#include <iostream>
#include "enet/enet.h"

#define SERVER_PORT 32765

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
    ENetHost* client;

    address.host = ENET_HOST_ANY;
    address.port = SERVER_PORT;

    std::cout << "Create Client" << std::endl;

    client = enet_host_create (nullptr /* create a client host */,
                               1 /* only allow 1 outgoing connection */,
                               2 /* allow up 2 channels to be used, 0 and 1 */,
                               0 /* assume any amount of incoming bandwidth */,
                               0 /* assume any amount of outgoing bandwidth */);

    if (client == nullptr)
    {
        fprintf (stderr, "An error occurred while trying to create an ENet client host.\n");
        exit (EXIT_FAILURE);
    }

    std::cout << "Destroy Client Host" << std::endl;
    enet_host_destroy(client);
    return 0;
}

