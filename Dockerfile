FROM debian:jessie

MAINTAINER Ben Cao <benb88@gmail.com>

RUN apt-get update && \
    apt-get install -y vim-nox curl git exuberant-ctags ack-grep && \
    apt-get clean

ENV TERM=xterm-256color PLUGINDIR=/usr/share/vim/vimfiles

# use pathogen as a runtime
RUN mkdir -p $PLUGINDIR/autoload $PLUGINDIR/bundle && \
    curl -LSso $PLUGINDIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins
RUN git clone https://github.com/mileszs/ack.vim.git $PLUGINDIR/bundle/ack.vim && \
    git clone https://github.com/kien/ctrlp.vim.git $PLUGINDIR/bundle/ctrlp.vim && \
    git clone https://github.com/scrooloose/nerdtree.git $PLUGINDIR/bundle/nerdtree && \
    git clone https://github.com/ervandew/supertab.git $PLUGINDIR/bundle/supertab && \
    git clone https://github.com/bling/vim-airline.git $PLUGINDIR/bundle/vim-airline && \
    git clone https://github.com/altercation/vim-colors-solarized.git $PLUGINDIR/bundle/vim-colors-solarized && \
    git clone https://github.com/tpope/vim-commentary.git $PLUGINDIR/bundle/vim-commentary && \
    git clone https://github.com/elixir-lang/vim-elixir.git $PLUGINDIR/bundle/vim-elixir && \
    git clone https://github.com/tpope/vim-fugitive.git $PLUGINDIR/bundle/vim-fugitive && \
    git clone https://github.com/airblade/vim-gitgutter.git $PLUGINDIR/bundle/vim-gitgutter && \
    git clone https://github.com/easymotion/vim-easymotion.git $PLUGINDIR/bundle/vim-easymotion && \
    git clone https://github.com/junegunn/vim-easy-align.git $PLUGINDIR/bundle/vim-easy-align && \
    git clone https://github.com/terryma/vim-multiple-cursors.git $PLUGINDIR/bundle/vim-multiple-cursors && \
    git clone https://github.com/tpope/vim-repeat.git $PLUGINDIR/bundle/vim-repeat

# add customized vimrc
ADD vimrc /etc/vim/vimrc.local
# entrypoint where the magical mapping happens
ADD entrypoint.sh /entrypoint.sh
# add doc in vim
ADD doc/vim_in_docker.txt $PLUGINDIR/bundle/vim_in_docker/doc/vim_in_docker.txt

# build helps
RUN vim -T xterm +Helptags +qall

WORKDIR /mnt/host_fs

ENTRYPOINT ["/entrypoint.sh"]
