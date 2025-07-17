# alias
echo -e "alias ls=\"ls --color\"" >> /etc/proofile
echo -e "alias ll=\"ls -l\"" >> /etc/proofile
echo -e "alias ipts=\"iptables -L -vn --line-numbers\"" >> /etc/proofile
source /etc/profile

# vim
rm -rf ~/.vimrc
touch ~/.vimrc
echo -e "set mouse=\"\"" >> ~/.vimrc
echo -e "set nu" >> ~/.vimrc
echo -e "set expandtab" >> ~/.vimrc
echo -e "set ts=4" >> ~/.vimrc
echo -e "syntax on" >> ~/.vimrc
