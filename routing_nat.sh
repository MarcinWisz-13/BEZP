vim /etc/sysctl.conf - net.ipv4.ip_forward = 1
sysctl -p

NAT:
iptables -t nat -A POSTROUTING -o eth0 -s 10.0.0.0/24 -j MASQUERADE