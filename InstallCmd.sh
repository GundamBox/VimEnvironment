#Install necessary program
apt-get install vim -y
apt-get install zsh -y
apt-get install python2.7 -y
#Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh
#Install powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
sh ./install.sh
cd ..
#Install vim plugin
mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/colors

wget -O ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes

git clone https://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate.vim

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

apt-get install ctags -y
wget -O taglist.zip https://sourceforge.net/projects/vim-taglist/files/vim-taglist/4.6/taglist_46.zip/download
unzip taglist.zip -d taglist
cd taglist/plugin
mkdir ~/.vim/bundle/taglist
cp taglist.vim ~/.vim/bundle/taglist
cd ../..
#Clone vim theme
git clone https://github.com/sickill/vim-monokai.git
cp colors/monokai.vim ~/.vim/colors/
#Copy oh-my-zsh config
cp zshrc ~/.zshrc
#Copy vim config
cp vimrc ~/.vimrc