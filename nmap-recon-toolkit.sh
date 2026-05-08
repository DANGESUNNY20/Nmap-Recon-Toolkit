#!/bin/bash

Validate_ip() {
if [ -z "$ip" ]
then
    echo -e "\e[1;31m[-] ERROR: IP CANNOT BE EMPTY\e[0m"
    return 1
fi
return 0
}

while true
do
echo -e "\e[1;31m"
echo "  ██████╗██╗   ██╗██████╗ ███████╗██████╗ "
echo " ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗"
echo " ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝"
echo " ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗"
echo " ╚██████╗   ██║   ██████╔╝███████╗██║  ██║"
echo "  ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝"
echo -e "\e[1;36m"
echo "        RECON TOOLKIT | NMAP AUTOMATION"
echo "        Created by Sunny Dange"
echo -e "\e[1;33m"
echo "================================================"
echo "        Authorized Security Testing Only"
echo "================================================"
echo -e "\e[0m"

echo " 1. Host Discovery Scan "
echo " 2. TCP SYN Scan "
echo " 3. TCP Connect Scan "
echo " 4. UDP Scan "
echo " 5. Service Version Detection "
echo " 6. Operating System Detection "
echo " 7. Aggressive Network Scan "
echo " 8. Default Script Scan "
echo " 9. Vulnerability Assessment Scan "
echo " 10. Full Port Scan "
echo " 11. Stealth Scan "
echo " 12. FIN Scan "
echo " 13. NULL Scan "
echo " 14. Xmas Scan "
echo " 15. ACK Scan "
echo " 16. Window Scan "
echo " 17. Idle Zombie Scan "
echo " 18. Fragmented Packet Scan "
echo " 19. IPv6 Network Scan "
echo " 20. Fast Scan "
echo " 21. Timing Template Scan "
echo " 22. Exit 😏 "

read -p "[+] [RECON] Enter Scan Option: " option

if [ "$option" = "22" ]
then
    echo "exiting... "
    break
fi

read -p " enter the ipv4 " ip

case $option in

1)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sn "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Host is alive"
    echo "[+] scanning... Live Host: $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Host not responding"
    echo "[-] scanning...Please check the IP address"
    echo -e "\e[0m"
fi
;;

2)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sS "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...TCP SYN Scan completed successfully"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...TCP SYN scan failed"
    echo "[-] scanning...Please check the IP address"
    echo -e "\e[0m"
fi
;;

3)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sT "$ip")
if [ $? -eq 0 ]
then
    echo "[+] scanning...TCP connect scan successful $ip"
    echo "$result"
else
    echo "[-] scanning...TCP connect scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
fi
;;

4)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sU "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...UDP scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...UDP scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

5)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sV "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Service Version Detection successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Service Version Detection unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

6)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -O "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...OS Detection successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...OS Detection unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

7)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -A "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Aggressive Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Aggressive Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

8)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sC "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Default Script Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Default Script Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

9)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap --script vuln "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Vulnerability Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Vulnerability Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

10)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -p- "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Full Port Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Full Port Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

11)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sS "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Stealth Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Stealth Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

12)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sF "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...FIN Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...FIN Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

13)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sN "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...NULL Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...NULL Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

14)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sX "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Xmas Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Xmas Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

15)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sA "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...ACK Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...ACK Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

16)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -sW "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Window Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Window Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

17)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
read -p "Enter zombie host: " zombie
result=$(nmap -sI "$zombie" "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Idle Zombie Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Idle Zombie Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address or zombie host"
    echo -e "\e[0m"
fi
;;

18)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -f "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Fragmented Packet Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Fragmented Packet Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

19)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -6 "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...IPv6 Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...IPv6 Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

20)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -F "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Fast Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Fast Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

21)
Validate_ip
if [ $? -ne 0 ]; then continue; fi
result=$(nmap -T4 "$ip")
if [ $? -eq 0 ]
then
    echo -e "\e[1;36m"
    echo "[+] scanning...Timing Template Scan successful $ip"
    echo "$result"
    echo -e "\e[0m"
else
    echo -e "\e[1;31m"
    echo "[-] scanning...Timing Template Scan unsuccessful $ip"
    echo "[-] scanning...please check the IP address $ip"
    echo -e "\e[0m"
fi
;;

*)
echo " invalid option "
;;

esac
done
