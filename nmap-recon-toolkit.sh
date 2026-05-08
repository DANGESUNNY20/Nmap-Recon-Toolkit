#!/bin/bash
Validate_ip () {  if  [  "-z $ip " ]
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
read -p " enter the ipv4 " ip
case $option in 
1) 
Validate_ip
result=$( nmap -sn $ip )

if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"

 echo "[+] scanning...Host is alive"
 echo "[+] scanning... Live Host: $ip"
 echo " $result "
 echo -e "\e[0m"
else 
echo -e "\e[1;31m"
 echo "[-] scanning...Host not responding"
 echo "[-] scanning...Please check the IP address"
 echo -e "\e[0m"
 fi 
 echo -e \e[0m 
 ;;
 2)
 Validate_ip
 result=$( nmap -sS $ip)
 
 if [ $? -ne 0 ]
 then 
 echo -e "\e[1;36m"
 echo " [+] scanning...TCP SYN Scan completed successfully "
 echo "  $result"
 echo -e "\e[0m"
 else 
 echo -e "\e[1;31m"
 echo " [-] scanning..TCP SYN scan failed "
 echo  "[-] scanning ...Please check the IP address"
 echo -e "\e[0m"
 fi
;;
3)
Validate_ip
result=$( nmap -sT $ip )
if [ $? -ne 0 ]

then 
echo " [+] scanning ...TCP connect scan sucessfful $ip  "
echo "  $result "
else
echo  "[-] scanning...tcp connect scan unsucessful $ip "
echo  "[-] scanning... please check the ip address  $ip "
fi 
;;
4)
Validate_ip
result=$( nmap -sU $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] scanning...UDP connect scan sucessfful $ip "
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] scaning...UDP connect scan unsucessful $ip "
echo  "[-] scanning... please check the ip address  $ip "
echo -e "\e[0m"
fi 
;;
5)
Validate_ip

result=$( nmap -sV $ip  )
if [ $? -ne 0 ] 

then 
echo -e "\e[1;36m"
echo " [+] scanning...SERVICE VERSION DETECTION  sucessfful $ip "
echo "  $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...Service VERSION DETECTION  unsucessful $ip "
echo  "[-] scanning... please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
6)
Validate_ip
result=$( nmap -O $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] Scanning... OS DETECTION  sucessfful $ip "
echo " $result"
else
echo -e "\e[0m"
echo  "[-] scanning... OS DETECTION  unsucessful $ip "
echo  "[-] scanning... please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
7)
Validate_ip

result=$( nmap -A $ip)
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] Scanning... AGGRACIVE SCANNING sucessfful  $ip "
echo "  $result "
else
echo -e "\e[0m"
echo  "[-] scanning... AGGRACIVE SCANNING   unsucessful  $ip "
echo  "[-] scanning... please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
8)
Validate_ip

result=$(nmap -sC  $ip)
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] scanning...deafult script Scan sucessfful $ip "
echo " $result"
else
echo -e "\e[0m"
echo  "[-] scanning... deafult script Scan   unsucessful $ip "
echo  "[-] scanning ...please check the ip address  $ip "
echo -e "\e[0m"
fi 
;;
9)
Validate_ip
result=$( nmap --script vuln $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] scanning...Vulnerability Scan Completed sucessfful $ip  "
echo "  $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] scanning...Vulnerability Scan unsucessful $ip "
echo  "[-] scanning...please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
10)
Validate_ip

result=$( nmap -p- $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] Scanning... Open Ports Found $ip  "
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] scanning ... Open Ports  scan   unsucessful $ip  "
echo  "[-] scanning ... please check the ip address $ip  "
echo -e "\e[0m"
fi 
;;
11)
Validate_ip
result=$( nmap -sS $ip)
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] scanning...stealth scan sucessfull $ip "
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] scanning...Stealth  scan   unsucessful $ip "
echo  "[-] scanning...please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
12)
Validate_ip
result=$( nmap -sF $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] Scanning... FIN scan sucessfful $ip "
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...FIN scan   unsucessful $ip  "
echo  "[-] Scanning...please check the ip address $ip  "
echo -e "\e[0m"
fi 
;;
13)
Validate_ip
result=$( nmap -sN $ip )
if [ $? -ne 0 ]

then 
echo -e "\e[1;36m"
echo " [+] Scanning... NULL scan sucessfful $ip "
echo "  $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning.. NULL scan   unsucessful $ip "
echo  "[-] Scanning...please check the ip address  $ip "
echo -e "\e[0m"
fi 
;;
14)
Validate_ip
result=$( nmap -sX $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning...xmass scan sucessfful $ip"
echo "  $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] scanning...xmass scan   unsucessful $ip  "
echo  "[-] scanning ...please check the ip address  $ip "
echo -e "\e[0m"
fi 
;;
15)
Validate_ip
result=$( nmap -sA $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning...ACK scan successful $ip"
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...ACK scan   unsuccessful $ip "
echo  "[-] Scanning...please check the ip address $ip  "
echo -e "\e[0m"
fi 
;;
16)
Validate_ip
result=$( nmap -sW $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning...window  scan sucessfful $ip "
echo " $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"

echo  "[-] Scanning... Window scan   unsuccessfull $ip  "
echo  "[-] Scanning...please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
17)
Validate_ip
result=$( nmap -sI zombie_host $ip)
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning... Zombie scan successful $ip "
echo "  $result "
echo -e "\e[0m" 
else
echo -e "\e[1;31m"
echo -e  "[-] Scanning... Zombie scan   unsuccessful $ip "
echo  "[-] Scanning...please check the ip address  $ip "
echo -e "\e[0m"
fi 
;;
18)
Validate_ip
result=$( nmap -f $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning... Fragmented Packet Scan successful $ip "
echo "  $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...Fragmented Packet Scan  unsuccessful $ip "
echo  "[-] Scanning...please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
19)
Validate_ip
result=$( nmap -6 $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning...ipv6  Scan sucessfful $ip "
echo "   $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning..ipv6 Scan  unsucessful  $ip "
echo  "[-] Scanning... please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
20)
Validate_ip
result=$( nmap -F $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning... fast   Scan sucessful $ip "
echo "   $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...fast Scan  unsucessful $ip  "
echo  "[-] Scanning...please check the ip address $ip "
echo -e "\e[0m"
fi 
 ;;
21)
Validate_ip
result=$( nmap -T4 $ip )
if [ $? -ne 0 ]
then 
echo -e "\e[1;36m"
echo " [+] Scanning... Timing Template Scan sucessful $ip"
echo "   $result "
echo -e "\e[0m"
else
echo -e "\e[1;31m"
echo  "[-] Scanning...Timing Template Scan  unsucessful $ip "
echo  "[-] Scanning... please check the ip address $ip "
echo -e "\e[0m"
fi 
;;
22)echo "exiting... "
break
 ;;
 
*) echo " invalid option "
;;
 esac 
 done
