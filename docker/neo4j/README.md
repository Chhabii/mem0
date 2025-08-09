```
mkdir -p docker/neo4j/volumes/{data,logs,conf,import,plugins}
```

0.0.0.0:7474->7474/tcp, [::]:7474->7474/tcp, 7473/tcp, 0.0.0.0:7687->7687/tcp, [::]:7687->7687/tcp

<host_ip>:<host_port> -> <container_port>/<protocol>

0.0.0.0:7474->7474/tcp

0.0.0.0 means: Bind on all IPv4 addresses of the host (localhost, LAN IP, etc.).

7474 (left side) = host port.

7474 (right side) = container port.

/tcp = using TCP protocol.

So: Any IPv4 request to your machine’s port 7474 goes to the container’s port 7474.

```
rm -rf volumes/data/*
```
- this command is useful to remove the database that was already created. 
- helpful when restarting another database user, password...