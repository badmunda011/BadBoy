
clear
echo -e "\e[1m"
echo -e " _         _     _      .-.   wWw  wWw"
echo -e "(_) /)  /_  (_) c(O_O)c (O)  (O)"
echo -e "(O)(O)(o)(O) /o_) (O)(O) ,'.-.,( \  / ) "
echo -e "/  _\  //\\ / |(\ /  _\ / /|_|_|\ \\ \/ / "
echo -e "| |_))|(__)|| | ))| |_))| \_____/ | \o /"
echo -e "| |_))/,-. || |// | |_))'. -' ._/ /"
echo -e "(.'-'-'   ''\__/  (.'-'   -...-' (_.'"
echo -e "\e[0m"
sec=5
spinner=(⣻ ⢿ ⡿ ⣟ ⣯ ⣷)
while [ $sec -gt 0 ]; do
    echo -ne "\e[33m ${spinner[sec]} Starting dependency installation in $sec seconds...\r"
    sleep 1
    sec=$(($sec - 1))
done
echo -e "\e[1;32mInstalling Dependencies ---------------------------\e[0m\n" # Don't Remove Dashes / Fix it
apt-get update
apt-get upgrade -y
pkg upgrade -y
pkg install python wget -y
wget https://raw.githubusercontent.com/Badhacker98/BadBoy/main/resources/session/ssgen.py
pip uninstall telethon -y && install telethon
clear
python3 ssgen.py
