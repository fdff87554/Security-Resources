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

# Install DNS Tools
echo "Installing DNS Tools..."
# Install Whois
echo "Installing Whois..."
sudo apt install whois -y

# Install nslookup, dig, host dns tools
echo "Installing nslookup, dig, host dns tools..."
sudo apt install dnsutils -y

# -----------------------------

# Install Scanning Tools
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

# # Install Vulnerability Scanning Tools
# echo "Installing Vulnerability Scanning Tools..."
# # Install OpenVAS
# # Installation Steps is from https://greenbone.github.io/docs/latest/22.4/source-build/index.html
# echo "Installing OpenVAS..."
# sudo apt install openvas -y
# sudo gvm-setup
