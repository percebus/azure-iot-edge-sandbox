# SRC: https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-transparent-gateway?view=iotedge-1.4&tabs=eflow

# Open MQTT port
Invoke-EflowVmCommand "sudo iptables -A INPUT -p tcp --dport 8883 -j ACCEPT"

# Open AMQP port
Invoke-EflowVmCommand "sudo iptables -A INPUT -p tcp --dport 5671 -j ACCEPT"

# Open HTTPS/MQTT+WS/AMQP+WS port
Invoke-EflowVmCommand "sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT"

# Save the iptables rules
Invoke-EflowVmCommand "sudo iptables-save | sudo tee /etc/systemd/scripts/ip4save"
