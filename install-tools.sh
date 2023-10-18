#!/bin/sh
# Update apt package list
echo "Updating apt packages..."
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# -----------------------------

# Install curl, wget, python3, vim, tmux, git, ...
echo "Installing curl, wget, python3, vim, tmux, git, ..."
sudo apt install curl wget python3 python3-pip vim git -y
sudo apt install libpcap-dev -y

# -----------------------------

# Install DNS Scanning Tools
echo "Installing DNS Tools..."
# - Install Whois
echo "Installing Whois..."
sudo apt install whois -y

# - Install nslookup, dig, host dns tools
echo "Installing nslookup, dig, host dns tools..."
sudo apt install dnsutils -y

# - Install fierce
echo "Installing fierce..."
sudo apt install fierce -y

# - Install dnsrecon
echo "Installing dnsrecon..."
sudo apt install dnsrecon -y

# - Install dnsenum
echo "Installing dnsenum..."
sudo apt install dnsenum -y

# - Install sublist3r
echo "Installing sublist3r..."
sudo apt install sublist3r -y

# # - Install Subfinder
# echo "Installing Subfinder..."
# go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# # - Install Altdns
# echo "Installing Altdns..."
# pip3 install py-altdns==1.0.2

# # - Install Amass
# echo "Installing Amass..."
# sudo apt install amass -y

# Web Tools
# dnsdumpster: https://dnsdumpster.com/

# -----------------------------

# Install Email Scanning Tools
# # Install theHarvester (kali linux tool)
# echo "Installing theHarvester..."
# sudo apt install theharvester -y

# Install Recon-ng
echo "Installing Recon-ng..."
sudo apt install recon-ng -y

# -----------------------------

# Install Service / Network Scanning Tools
# Install Network Scanning Tools
echo "Installing Network Scanning Tools..."
# Install Nmap
echo "Installing Nmap..."
sudo apt install nmap -y

# Install Naabu
echo "Installing Naabu..."
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Install Masscan
echo "Installing Masscan..."
sudo apt-get --assume-yes install git make gcc
git clone https://github.com/robertdavidgraham/masscan
cd masscan || exit
make install
make -j4

# # Install RustScan
# echo "Installing RustScan..."
# # Please remember to check the latest version of RustScan
# wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
# sudo dpkg -i rustscan_2.0.1_amd64.deb
# rm ./rustscan_2.0.1_amd64.deb

# # Install nikto
# echo "Installing nikto..."
# sudo apt install nikto -y

# Install WPscan: a special tool for wordpress
echo "Installing WPscan..."
sudo apt install ruby-full -y
sudo gem install wpscan

# -----------------------------

# Install SQLMap
sudo apt install sqlmap -y

# -----------------------------

# Install Directory Scanning Tools
echo "Installing Directory Scanning Tools..."
# Install dirb
echo "Installing dirb..."
sudo apt install dirb -y

# Install dirsearch
echo "Installing dirsearch..."
sudo apt install dirsearch -y

# Install gobuster
echo "Installing gobuster..."
sudo apt install gobuster -y

# -----------------------------

# Install Exploitation Tools
echo "Installing Exploitation Tools..."
# Install Searchsploit
echo "Installing Searchsploit..."
git clone https://gitlab.com/exploit-database/exploitdb.git /opt/exploit-database
ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit
cp -n /opt/exploit-database/.searchsploit_rc ~/

# Install Metasploit
echo "Installing Metasploit..."
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
rm ./msfinstall

# -----------------------------

# Install Hash Cracking Tools
echo "Installing Hash Cracking Tools..."
# Install hashcat
echo "Installing hashcat..."
sudo apt install hashcat -y

# Install hashid
echo "Installing hashid..."
sudo apt install hashid -y

# Install BruteForce Tools
echo "Installing BruteForce Tools..."
# Install Hydra
echo "Installing Hydra..."
sudo apt install hydra -y
# Install John the Ripper
echo "Installing John the Ripper..."
mkdir -p ~/src
sudo apt -y install git build-essential libssl-dev zlib1g-dev
# ==== Recommended (extra formats and performance)
sudo apt -y install yasm pkg-config libgmp-dev libpcap-dev libbz2-dev
# # ==== If you have NVIDIA GPU(s) (OpenCL support)
# sudo apt -y install nvidia-opencl-dev
# # ==== If you have AMD GPU(s) (OpenCL support)
# sudo apt -y install ocl-icd-opencl-dev opencl-headers
cd ~/src || exit
git clone https://github.com/openwall/john -b bleeding-jumbo john
cd ~/src/john/src || exit
./configure && make -s clean && make -sj4

cd ~/ || exit

# Install githacker
echo "Installing githacker..."
sudo pip install githacker

# # Install hash-identifier (kali linux tool)
# echo "Installing hash-identifier..."
# sudo apt install hash-identifier -y

# -----------------------------

# # Install Vulnerability Scanning Tools
# echo "Installing Vulnerability Scanning Tools..."
# # Install GVM
# echo "Installing GVM..."
# sudo apt install gvm -y
# sudo gvm-setup
