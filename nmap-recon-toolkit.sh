```bash
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

clear

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

echo "1. Single Target Scan"
echo "2. Multiple Target File Scan"

read -p "[+] Select Scan Mode: " mode

if [ "$mode" = "1" ]
then
    read -p "[RECON] Enter Target IP: " ip

    echo "$ip" > single_target.txt

    target_file="single_target.txt"

elif [ "$mode" = "2" ]
then
    read -p "[RECON] Enter Target List File (.txt): " target_file

else
    echo "[-] Invalid Mode"
    continue
fi

echo ""
echo "==============================="
echo " SAVE RESULT OPTION "
echo "==============================="

echo "1. Save Scan Results"
echo "2. Do Not Save"

read -p "[+] Select Option: " save_option

if [ "$save_option" = "1" ]
then
    read -p "[+] Enter File Name: " filename

    mkdir -p reports

else
    filename=""
fi

echo ""
echo "============= SCAN MENU ============="

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

echo ""
read -p "[+] Enter Multiple Scan Options (Example: 1 2 5 9): " options

if [[ "$options" =~ 22 ]]
then
    echo "[+] Exiting..."
    break
fi

while read ip
do

if [[ "$ip" =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
then

echo ""
echo "================================================"
echo "[+] TARGET : $ip"
echo "================================================"

for option in $options
do

echo ""
echo "[+] Running Scan Option : $option"

case $option in

1)

scan_name="Host Discovery Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sn "$ip")

;;

2)

scan_name="TCP SYN Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sS "$ip")

;;

3)

scan_name="TCP Connect Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sT "$ip")

;;

4)

scan_name="UDP Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sU "$ip")

;;

5)

scan_name="Service Version Detection"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sV "$ip")

;;

6)

scan_name="Operating System Detection"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -O "$ip")

;;

7)

scan_name="Aggressive Network Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -A "$ip")

;;

8)

scan_name="Default Script Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sC "$ip")

;;

9)

scan_name="Vulnerability Assessment Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap --script vuln "$ip")

;;

10)

scan_name="Full Port Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -p- "$ip")

;;

11)

scan_name="Stealth Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sS "$ip")

;;

12)

scan_name="FIN Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sF "$ip")

;;

13)

scan_name="NULL Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sN "$ip")

;;

14)

scan_name="XMAS Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sX "$ip")

;;

15)

scan_name="ACK Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sA "$ip")

;;

16)

scan_name="Window Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -sW "$ip")

;;

17)

scan_name="Idle Zombie Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

read -p "[+] Enter Zombie Host: " zombie

result=$(nmap -sI "$zombie" "$ip")

;;

18)

scan_name="Fragmented Packet Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -f "$ip")

;;

19)

scan_name="IPv6 Network Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -6 "$ip")

;;

20)

scan_name="Fast Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -F "$ip")

;;

21)

scan_name="Timing Template Scan"

Validate_ip
if [ $? -ne 0 ]; then continue; fi

result=$(nmap -T4 "$ip")

;;

*)

echo -e "\e[1;31m[-] Invalid Scan Option : $option\e[0m"
continue

;;

esac

if [ $? -eq 0 ]
then

echo -e "\e[1;36m"
echo "[+] $scan_name Successful"
echo "$result"
echo -e "\e[0m"

if [ "$save_option" = "1" ]
then

report_file="reports/${filename}.txt"

echo "================================================" >> "$report_file"
echo "TARGET IP : $ip" >> "$report_file"
echo "SCAN TYPE : $scan_name" >> "$report_file"
echo "================================================" >> "$report_file"

echo "$result" >> "$report_file"

echo "" >> "$report_file"
echo "" >> "$report_file"

fi

else

echo -e "\e[1;31m"
echo "[-] $scan_name Failed"
echo -e "\e[0m"

fi

done

else

echo -e "\e[1;31m[-] Invalid IP Address : $ip\e[0m"

fi

done < "$target_file"

echo ""

if [ "$save_option" = "1" ]
then
    echo "[+] Report Saved Successfully : reports/${filename}.txt"
fi

read -p "Press Enter To Continue..."

done
```
