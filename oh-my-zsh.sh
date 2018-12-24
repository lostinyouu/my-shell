#！/bin/bash

# 安装 vim
yum install -y vim
echo "install vim done"

# 安装 zsh
yum install -y zsh
echo "install zsh done"

# 安装 git
yum install -y git
echo "install git done"

# 安装 oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
echo "install oh-my-zsh done"

# 安装 zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "install zsh-autosuggestions done"


# 安装 zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "install zsh-syntax-highlighting done"

# 安装 autojump
git clone git://github.com/joelthelion/autojump.git ~/autojump
~/autojump/install.py
echo "install autojump done"

# 复制文件 .zshrc
cp -f ./config/.zshrc ~/.zshrc
echo ".zshrc done"

# 切换 zsh
chsh -s /bin/zsh