# RabbitMQ Federation Example
Example illustrating how to send messages from one broker to another
using federation.

## Why?
Because federation is somehting that took me a bit of time to get right
so I'm sharing my knowledge for others.

### Why Not Just Use a Freaking Cluster?
The demo itself is impractical and in the real world this is only useful
when the brokers are separated by a WAN.

## Running It

To run it, first make sure you have RabbitMQ 2.7.1 or above installed.
The run the following two commands

```bash
$ ./start-node1.sh &
$ ./start-node2.sh &
```

This will start two brokers, one running on port 25672 and another
running on port 35672. They also have management consoles running on
port 55555 and 55556 respectively. 

Node1 has been configured with the federation plugin and defined node2
as an upstream node. This means any messages published to my-exchange on
the upstream will be "federated" to the downstream.
