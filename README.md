# net-tools
Alpine image with network tools for testing network issues

## Check port connectivity 
```shell
git clone https://github.com/mesoform/net-tools.git
```
```shell
docker stack deploy -c examples/port-connect-compose.yml net_tools
Creating network net_test_net_tools_test
Creating service net_test_server
Creating service net_test_client
```

Watch for successful completions of client
```shell
watch docker stack ps net_tools
```

Check logs
```shell
docker service logs net_tools_client
net_test_client.1.soc99zrkbtlu@lab2    | Connection to server 80 port [tcp/http] succeeded!
```
```shell
docker service logs net_tools_server
net_test_server.1.4i9q9vvw8p5i@lab1    | Listening on [0.0.0.0] (family 2, port 80)
net_test_server.1.yvxdyl6g4825@lab1    | Listening on [0.0.0.0] (family 2, port 80)
net_test_server.1.yvxdyl6g4825@lab1    | Connection from 10.0.3.7 56464 received!
```

Remove stack
```shell
docker --context lab2https stack rm net_tools                                                                                    (main)net-tools
Removing service net_tools_client
Removing service net_tools_server
Removing network net_tools_test_network
Removing network net_tools_net_tools_test
```