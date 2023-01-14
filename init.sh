echo "net.core.default_qdisc=fq">>/etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr">>/etc/sysctl.conf
sysctl -p
apt update
rm -rf /etc/haproxy/haproxy.cfg
apt install -y haproxy
curl https://raw.githubusercontent.com/RayP2P/test/main/haproxy.cfg>/etc/haproxy/haproxy.cfg
systemctl restart haproxy
ps -ef | grep haproxy
lsof -i :8443
