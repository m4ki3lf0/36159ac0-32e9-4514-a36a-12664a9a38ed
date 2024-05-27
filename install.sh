git clone https://github.com/m4ki3lf0/36159ac0-32e9-4514-a36a-12664a9a38ed
cd 36159ac0-32e9-4514-a36a-12664a9a38ed

cat tmux.conf >> ~/.tmux.conf
cat aliases >>  /opt/.exegol_aliases
cat history >> ~/.zsh_history

cp /opt/seclists/Passwords/xato-net-10-million-passwords-1000000.txt /opt/bigwl.txt

cd ..
rm -rf 36159ac0-32e9-4514-a36a-12664a9a38ed

python3 -m pip install --user uploadserver
pip3 install wsgidav
pip install cheroot
pip3 install pyftpdlib
apt-get install snmp-mibs-downloader

echo "PermitRootLogin prohibit-password" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "deb http://ftp.fr.debian.org/debian/ jessie main non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.fr.debian.org/debian/ jessie main non-free" >> /etc/

git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/Frozenka/uploader.git /opt/tools/uploader
pip3 install -r /opt/tools/uploader/requirements.txt

sed -i 's/"#"/"%{$fg[green]%}➜ %{$reset_color%}"/g' /opt/.exegol_shells_rc
sed -i 's/"%m"/"${HOSTNAME#exegol-}"/g' /opt/.exegol_shells_rc
sed -i 's/(%Z)//g' ~/.zshrc

rm /workspace/install.sh
