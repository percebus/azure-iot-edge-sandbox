# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow

set -e
set -v
set -x


# Open MQTT port
iptables -A INPUT -p tcp --dport 8883 -j ACCEPT

# Open AMQP port
iptables -A INPUT -p tcp --dport 5671 -j ACCEPT

# Open HTTPS/MQTT+WS/AMQP+WS port
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Save the iptables rules
iptables-save | tee /etc/systemd/scripts/ip4save


# $> netstat -tulpn
# Active Internet connections (only servers)
# Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
# tcp        0      0 127.0.0.1:5344          0.0.0.0:*               LISTEN      942/lttng-relayd
# tcp        0      0 127.0.0.1:5343          0.0.0.0:*               LISTEN      942/lttng-relayd
# tcp        0      0 127.0.0.1:5342          0.0.0.0:*               LISTEN      942/lttng-relayd
# tcp        0      0 127.0.0.1:5345          0.0.0.0:*               LISTEN      943/lttng-sessiond
# tcp        0      0 0.0.0.0:3240            0.0.0.0:*               LISTEN      692/usbipd
# tcp6       0      0 :::3240                 :::*                    LISTEN      692/usbipd
# tcp        0      0 127.0.0.1:36697         0.0.0.0:*               LISTEN      727/containerd
# tcp        0      0 0.0.0.0:443             0.0.0.0:*               LISTEN      11437/docker-proxy
# tcp        0      0 0.0.0.0:8883            0.0.0.0:*               LISTEN      11397/docker-proxy
# tcp        0      0 0.0.0.0:5671            0.0.0.0:*               LISTEN      11417/docker-proxy
# tcp6       0      0 :::443                  :::*                    LISTEN      11442/docker-proxy
# tcp6       0      0 :::5671                 :::*                    LISTEN      11422/docker-proxy
# tcp6       0      0 :::8883                 :::*                    LISTEN      11402/docker-proxy
# tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      723/systemd-resolve
# tcp        0      0 127.0.0.54:53           0.0.0.0:*               LISTEN      723/systemd-resolve
# udp        0      0 127.0.0.53:53           0.0.0.0:*                           723/systemd-resolve
# udp        0      0 127.0.0.54:53           0.0.0.0:*                           723/systemd-resolve
# udp        0      0 172.28.89.2:68          0.0.0.0:*                           714/systemd-network
netstat -tulpn


set +v
set +e
set +x
