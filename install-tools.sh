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

# -----------------------------

# Install DNS Scanning Tools
echo "Installing DNS Tools..."
# Install Whois
echo "Installing Whois..."
sudo apt install whois -y

# Install nslookup, dig, host dns tools
echo "Installing nslookup, dig, host dns tools..."
sudo apt install dnsutils -y

# Install fierce
echo "Installing fierce..."
sudo apt install fierce -y

# Install dnsrecon
echo "Installing dnsrecon..."
sudo apt install dnsrecon -y

# Install dnsenum
echo "Installing dnsenum..."
sudo apt install dnsenum -y

# Install sublist3r
echo "Installing sublist3r..."
sudo apt install sublist3r -y

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

# Install RustScan
echo "Installing RustScan..."
# Please remember to check the latest version of RustScan
wget https://github.com/RustScan/RustScan/releases/download/2.0.1/rustscan_2.0.1_amd64.deb
sudo dpkg -i rustscan_2.0.1_amd64.deb
rm ./rustscan_2.0.1_amd64.deb

# Install nikto
echo "Installing nikto..."
sudo apt install nikto -y

# Install WPscan: a special tool for wordpress
echo "Installing WPscan..."
sudo apt install ruby-full -y
sudo gem install wpscan

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
