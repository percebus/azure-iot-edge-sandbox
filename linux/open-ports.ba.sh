# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow

# Open MQTT port
iptables -A INPUT -p tcp --dport 8883 -j ACCEPT

# Open AMQP port
iptables -A INPUT -p tcp --dport 5671 -j ACCEPT

# Open HTTPS/MQTT+WS/AMQP+WS port
iptables -A INPUT -p tcp --dport 443 -j ACCEPT

# Save the iptables rules
iptables-save | tee /etc/systemd/scripts/ip4save
