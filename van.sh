#// SecurityTeams Urls and ips
iptables -A INPUT -s 149.112.112.112 -p udp --destination-port 27106 -j DROP
iptables -A INPUT -s 149.112.112.112 -p tcp --destination-port 27106 -j DROP
iptables -A INPUT -s dns.quad9.net -p udp --destination-port 27106 -j DROP
iptables -A INPUT -s dns.quad9.net -p tcp --destination-port 27106 -j DROP
iptables -A INPUT -s dns.quad9.net -p tcp --destination-port 23761 -j DROP
iptables -A INPUT -s dns.quad9.net -p udp --destination-port 23761 -j DROP
iptables -A INPUT -s one.one.one.one -p tcp --destination-port 25567 -j DROP
iptables -A INPUT -s one.one.one.one -p udp --destination-port 25567 -j DROP
iptables -A INPUT -s resolver1.opendns.com -p udp --destination-port 27354 -j DROP
iptables -A INPUT -s resolver1.opendns.com -p tcp --destination-port 27354 -j DROP  
#// SecurityTeam IPS
iptables -I INPUT -s dns.quad9.net -j DROP
iptables -I INPUT -s one.one.one.one -j DROP
iptables -I INPUT -s resolver1.opendns.com -j DROP       
iptables -I INPUT -s 51.15.222.43-j DROP   
iptables -I INPUT -s  185.216.212.194 -j DROP
iptables -I INPUT -s 51.0.0.0/51.255.255.255 -j DROP
iptables -I INPUT -s  185.216.212.195 -j DROP
iptables -I INPUT -s  51.15.112.33 -j DROP
iptables -I INPUT -s  51.158.125.239 -j DROP
iptables -I INPUT -s  51.15.90.100 -j DROP
iptables -I INPUT -s 51.158.119.123 -j DROP
iptables -I INPUT -s 51.15.233.74 -j DROP
iptables -I INPUT -s 51.158.173.117 -j DROP
iptables -I INPUT -s 51.15.7.144 -j DROP
#// Ports That Bypasses Use to send through
iptables -A INPUT -p tcp -m multiport --dports 53145,53148,53146,10425,53150,10427,10430,10432,10434 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 53156,53153,10438,10439,53160,53161,10441,53158,53159,10447,10443,10448,10447,10444,62488 -j DROP 
iptables -A INPUT -p udp -m multiport --dports 135,137,138,139,445,1433,1434 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 135,137,138,139,445,1433,1434 -j DROP
iptables -A INPUT -p udp -m multiport --sports 135,137,138,139,445,1433,1434 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 135,137,138,139,445,1433,1434 -j DROP 
iptables -A INPUT -p udp -m multiport --dports 853,4433,4740,5349,5684,5868,6514,6636,8232,10161 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 853,4433,4740,5349,5684,5868,6514,6636,8232,10161 -j DROP
iptables -A INPUT -p udp -m multiport --sports 853,4433,4740,5349,5684,5868,6514,6636,8232,10161 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 853,4433,4740,5349,5684,5868,6514,6636,8232,10161 -j DROP
iptables -A INPUT -p udp -m multiport --dports 10162,12346,12446,12546,12646,12746,12846,12946,13046 -j DROP 
iptables -A INPUT -p tcp -m multiport --dports 10162,12346,12446,12546,12646,12746,12846,12946,13046 -j DROP
iptables -A INPUT -p udp -m multiport --sports 10162,12346,12446,12546,12646,12746,12846,12946,13046 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 10162,12346,12446,12546,12646,12746,12846,12946,13046 -j DROP
iptables -A INPUT -p udp -m multiport --dports 1645,1812,2049,3283,2302,6481,17185,26000,26001,26002 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 1645,1812,2049,3283,2302,6481,17185,26000,26001,26002 -j DROP
iptables -A INPUT -p udp -m multiport --sports 1645,1812,2049,3283,2302,6481,17185,26000,26001,26002 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 1645,1812,2049,3283,2302,6481,17185,26000,26001,26002 -j DROP
iptables -A INPUT -p udp -m multiport --dports 26003,26004,27960,27961,27962,27963,27964,30720,30721 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 26003,26004,27960,27961,27962,27963,27964,30720,30721 -j DROP
iptables -A INPUT -p udp -m multiport --sports 26003,26004,27960,27961,27962,27963,27964,30720,30721 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 26003,26004,27960,27961,27962,27963,27964,30720,30721 -j DROP
iptables -A INPUT -p udp -m multiport --dports 30722,30723,30724,44400,3784,64378,8767,11211,1645,1812,520 -j DROP
iptables -A INPUT -p tcp -m multiport --dports 30722,30723,30724,44400,3784,64378,8767,11211,1645,1812,520 -j DROP
iptables -A INPUT -p udp -m multiport --sports 30722,30723,30724,44400,3784,64378,8767,11211,1645,1812,520 -j DROP
iptables -A INPUT -p tcp -m multiport --sports 30722,30723,30724,44400,3784,64378,8767,11211,1645,1812,520 -j DROP
#// Drops Tcp flags
iptables -A INPUT -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP
iptables -A INPUT -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,PSH,URG -j DROP
iptables -A INPUT -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG -j DROP
iptables -A INPUT -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP
iptables -A INPUT -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
iptables -A INPUT -p tcp -m tcp --tcp-flags RST RST -m limit --limit 2/second --limit-burst 2 -j ACCEPT
iptables -A INPUT -p icmp -m icmp --icmp-type address-mask-request -j DROP
iptables -A INPUT -p icmp -m icmp --icmp-type timestamp-request -j DROP
iptables -A INPUT -p icmp -m limit --limit 2/second --limit-burst 2 -j ACCEPT
iptables -A INPUT -p icmp -j DROP
iptables -A INPUT -s 224.0.0.0/4 -j DROP
iptables -A INPUT -d 224.0.0.0/4 -j DROP
iptables -A INPUT -s 240.0.0.0/5 -j DROP
iptables -A INPUT -d 240.0.0.0/5 -j DROP
iptables -A INPUT -s 0.0.0.0/8 -j DROP
iptables -A INPUT -d 0.0.0.0/8 -j DROP
iptables -A INPUT -d 239.255.255.0/24 -j DROP
iptables -A INPUT -d 255.255.255.255 -j DROP
#//Tcp Flags
iptables -A INPUT -p tcp --tcp-flags ACK,FIN FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags ACK,PSH PSH -j DROP
iptables -A INPUT -p tcp --tcp-flags ACK,URG URG -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL SYN,FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL URG,PSH,FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags ALL URG,PSH,SYN,FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags FIN,RST FIN,RST -j DROP
iptables -A INPUT -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s -j ACCEPT
iptables -A INPUT -p tcp --tcp-flags SYN,ACK SYN,ACK -m state --state NEW -j DROP
iptables -A INPUT -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
iptables -A INPUT -p tcp --tcp-flags SYN,RST SYN,RST -j DROP
iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP
iptables -t mangle -A PREROUTING -p tcp ! --syn -m conntrack --ctstate NEW -j DROP
iptables -t mangle -A PREROUTING -p tcp -m conntrack --ctstate NEW -m tcpmss ! --mss 536:65535 -j DROP
#//Tcp Flags
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP

iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP 
iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP 
iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP 
iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP 
iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP 
iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP 
iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP 
iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP 
iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
#// Lengths of bypasses // Common methods.
iptables -A INPUT -p udp -m length --length 1024 -j DROP
iptables -A INPUT -p udp -m length --length 1400 -j DROP 
iptables -A INPUT -p udp -m length --length 1300 -j DROP
iptables -A INPUT -p udp -m length --length 1025 -j DROP
iptables -A INPUT -p udp -m length --length 1212 -j DROP
iptables -A INPUT -p tcp -m length --length 1212 -j DROP
iptables -A INPUT -p tcp -m length --length 1025 -j DROP
iptables -A INPUT -p tcp -m length --length 1300 -j DROP
iptables -A INPUT -p tcp -m length --length 1400 -j DROP
iptables -A INPUT -p udp -m length --length 1456 -j DROP
#// These next tables will block method strings that would normally smack an OVH on an open port
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROPP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|77 70 61 64 2e 64 6f 6d 61 69 6e 2e 6e 61 6d 65|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbf307830303030303030303030433032313130|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbf30783030363030453030|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbf30783030363030453038|' -j DROP
iptables -I INPUT 1 -p udp --dport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 22 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --dport 62305 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --dport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT 1 -p udp --sport 443 --match string --algo kmp --hex-string '|Efbbbfefbbbfefbbbfefbbbfefbbbf30783030303230303031|' -j DROP
iptables -I INPUT -p udp -m udp -m string --hex-string "|ffffffff6765746368616c6c656e676520302022|" --algo kmp -j DROP
iptables -I INPUT -p udp -m udp -m string --hex-string "|00000000000000000000000000000000|" --algo kmp --from 32 --to 33 -j DROP
iptables -A INPUT -p udp -m u32 --u32 "22&0xFFFF=0x0008" -j DROP
iptables -A INPUT -p udp -m u32 --u32 "28 & 0x00FF00FF = 0x00200020 && 32 & 0x00FF00FF = 0x00200020 && 36 & 0x00FF00FF = 0x00200020 && 40 & 0x00FF00FF = 0x00200020" -j DROP
iptables -A INPUT -p tcp -m u32 --u32 "22&0xFFFF=0x0008" -j DROP
iptables -A INPUT -p tcp -m u32 --u32 "28 & 0x00FF00FF = 0x00200020 && 32 & 0x00FF00FF = 0x00200020 && 36 & 0x00FF00FF = 0x00200020 && 40 & 0x00FF00FF = 0x00200020" -j DROP
iptables -I INPUT -p tcp -i ens160 -m state --state NEW -m recent --update --seconds 1000 --hitcount 1 -j DROP
iptables -A INPUT -d 107.167.0.0/24 -j DROP 
iptables -A INPUT -d 104.251.0.0/24 -j DROP 
iptables -A INPUT -d 104.160.0.0/24 -j DROP 
iptables -A INPUT -d 126.123.0.0/24 -j DROP 
iptables -A INPUT -d 126.123.0.0/24 -j DROP
iptables -A INPUT -d 182.61.0.0/24 -j DROP
iptables -A INPUT -d 27.50.0.0/24 -j DROP 
iptables -A INPUT -d 62.254.0.0/24 -j DROP
iptables -A INPUT -d 170.75.0.0/24 -j DROP
iptables -A INPUT -d 42.81.0.0/24 -j DROP
iptables -A INPUT -d 65.49.0.0/24 -j DROP 
iptables -A INPUT -d 117.18.0.0/24 -j DROP
iptables -A INPUT -d 52.79.0.0/24 -j DROP 
iptables -A INPUT -d 176.102.0.0/24 -j DROP
iptables -A INPUT -d 98.126.0.0/24 -j DROP 
iptables -A INPUT -d 59.188.0.0/24 -j DROP
iptables -A INPUT -d 153.121.0.0/24 -j DROP
iptables -A INPUT -d 150.95.0.0/24 -j DROP 
iptables -A INPUT -d 62.28.0.0/24 -j DROP
iptables -A INPUT -d 107.161.0.0/24 -j DROP 
iptables -A INPUT -d 67.21.0.0/24 -j DROP 
iptables -A INPUT -d 13.127.0.0/24 -j DROP
iptables -A INPUT -d 98.126.0.0/24 -j DROP
iptables -A INPUT -d 133.130.0.0/24 -j DROP
iptables -A INPUT -d 188.226.0.0/24 -j DROP
iptables -A INPUT -d 185.149.0.0/24 -j DROP
iptables -A INPUT -d 144.91.0.0/24 -j DROP
iptables -A INPUT -d 151.236.0.0/24 -j DROP
iptables -A INPUT -d 204.188.0.0/24 -j DROP
iptables -A INPUT -d 72.175.0.0/24 -j DROP
iptables -A INPUT -d 185.38.0.0/24 -j DROP
iptables -A INPUT -d 185.149.0.0/24 -j DROP
iptables -A INPUT -d 144.91.0.0/24 -j DROP
iptables -A INPUT -d 107.167.0.0/24 -j DROP
iptables -A INPUT -d 162.219.0.0/24 -j DROP
iptables -A INPUT -d 176.104.0.0/24 -j DROP
iptables -A INPUT -d 42.180.0.0/24 -j DROP
iptables -A INPUT -d 118.45.0.0/24 -j DROP
iptables -A INPUT -d 13.124.0.0/24 -j DROP
iptables -A INPUT -d 115.22.0.0/24 -j DROP
iptables -A INPUT -d 185.81.0.0/24 -j DROP
iptables -A INPUT -d 182.161.0.0/24 -j DROP
iptables -A INPUT -d 185.186.0.0/24 -j DROP
iptables -A INPUT -d 76.164.0.0/24 -j DROP
iptables -A INPUT -d 85.105.0.0/24 -j DROP
iptables -A INPUT -d 112.87.0.0/24 -j DROP
iptables -A INPUT -d 159.93.0.0/24 -j DROP
iptables -A INPUT -d 199.101.0.0/24 -j DROP
iptables -A INPUT -d 83.240.0.0/24 -j DROP
iptables -A INPUT -d 199.101.0.0/24 -j DROP
iptables -A INPUT -d 185.135.0.0/24 -j DROP
iptables -A INPUT -d 76.164.0.0/24 -j DROP
iptables -A INPUT -d 202.253.0.0/24 -j DROP 
iptables -A INPUT -d 159.93.0.0/24 -j DROP
iptables -A INPUT -d 172.82.0.0/24 -j DROP
iptables -A INPUT -d 176.9.0.0/24 -j DROP
iptables -A INPUT -d 199.101.0.0/24 -j DROP
iptables -A INPUT -d 193.77.0.0/24 -j DROP
iptables -A INPUT -d 185.159.0.0/24 -j DROP
iptables -A INPUT -d 176.53.0.0/24 -j DROP
iptables -A INPUT -d 182.171.0.0/24 -j DROP
iptables -A INPUT -d 104.131.0.0/24 -j DROP
iptables -A INPUT -d 181.215.0.0/24 -j DROP
iptables -A INPUT -d 156.54.0.0/24 -j DROP
#// Helps block amp methods 
iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP 			
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
iptables -t mangle -A PREROUTING -p icmp -j DROP
iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT
iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
iptables -t mangle -A PREROUTING -m conntrack --ctstate INVALID -j DROP
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
iptables -t mangle -A PREROUTING -p icmp -j DROP
iptables -I PREROUTING -i eth0 -t raw -p udp -m length --length 1052 -j DROP 
iptables -I PREROUTING -i eth0 -t raw -p udp -m length --length 540 -j DROP
iptables -I PREROUTING -i eth0 -t raw -p tcp -m multiport --dports 47873,24870,41100 -j DROP
iptables -I PREROUTING -i eth0 -t raw -p udp -m multiport --sports 3284,30718,161,38,41794,123 -j DROP
iptables -I PREROUTING -i eth0 -t raw -p udp -m multiport --dports 47873,24870,5277 -j DROP
iptables -I OUTPUT -p tcp --tcp-flags RST RST -m limit --limit 4/s -j ACCEPT
iptables -A OUTPUT -p tcp --tcp-flags RST RST -j DROP
iptables -A INPUT -m state --state INVALID -j DROP
iptables -A FORWARD -m state --state INVALID -j DROP
iptables -A OUTPUT -m state --state INVALID -j DROP
iptables -t mangle -A PREROUTING -p udp -m string --algo bm --hex-string "|53414d5033|" -m length --length 39 -j DROP

iptables -N LOGPSCAN
iptables -A LOGPSCAN -p tcp --syn -m limit --limit 3600/hour -j RETURN
iptables -A LOGPSCAN -m limit --limit 200/hour -j LOG --log-prefix "DROPPED Port scan: "
iptables -A LOGPSCAN -j DROP
iptables -A INPUT -p tcp --syn -j LOGPSCAN

iptables -N UDPLIMIT
iptables -A UDPLIMIT --match hashlimit --hashlimit-upto 18000/minute --hashlimit-mode srcip --hashlimit-name udp_rate_limit -j RETURN
iptables -A UDPLIMIT --match limit --limit 5/min -j LOG --log-prefix "DROPPED UDP Flood: "
iptables -A UDPLIMIT -j DROP
iptables -A INPUT -p udp -j UDPLIMIT
iptables -N RATE-LIMIT
iptables -A RATE-LIMIT --match hashlimit --hashlimit-upto 18000/minute --hashlimit-mode srcip --hashlimit-name tcp_rate_limit -j ACCEPT
iptables -A RATE-LIMIT --match limit --limit 10/min -j LOG --log-prefix "DROPPED TCP Rate-Limit: "
iptables -A RATE-LIMIT -j DROP

clear

echo ---------------------
echo  -e "\033[32;5mLeszys Tables Installed!\033[0m"
echo ----------------------
#End