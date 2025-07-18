# alias
PROFILE="$HOME/.profile"
if [ `grep -c "alias ls=" $PROFILE` -eq '0' ];then
    echo "alias ls=\"ls --color\"" >> $PROFILE
fi
if [ `grep -c "alias ll=" $PROFILE` -eq '0' ];then
    echo "alias ll=\"ls -l\"" >> $PROFILE
fi
if [ `grep -c "alias ipts=" $PROFILE` -eq '0' ];then
    echo "alias ipts=\"iptables -L -vn --line-numbers\"" >> $PROFILE
fi

# vim
VIMRC="$HOME/.vimrc"
rm -rf $VIMRC
touch $VIMRC
echo "set mouse=\"\"" >> $VIMRC
echo "set nu" >> $VIMRC
echo "set expandtab" >> $VIMRC
echo "set ts=4" >> $VIMRC
echo "syntax on" >> $VIMRC

# install software
wget https://get.docker.com -O get-docker.sh && sh get-docker.sh
apt update
apt install vim iptables-persistent net-tools supervisor -y
systemctl enable docker
systemctl enable supervisor
