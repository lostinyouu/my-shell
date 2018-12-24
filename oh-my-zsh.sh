#！/bin/bash
yum install -y vim

yum install -y zsh

yum install -y git

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -e "/66/a zsh-autosuggestions" -i test.txt
chsh -s /bin/zsh