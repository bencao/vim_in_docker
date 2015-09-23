FROM debian:jessie

MAINTAINER Ben Cao <benb88@gmail.com>

RUN apt-get update && \
    apt-get install -y vim curl git ctags

ENV TERM=xterm-256color PLUGINDIR=/usr/share/vim/vimfiles

# use pathogen as a runtime
RUN mkdir -p $PLUGINDIR/autoload $PLUGINDIR/bundle && \
    curl -LSso $PLUGINDIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install plugins - keep it minimal if possible
RUN git clone https://github.com/kien/ctrlp.vim.git $PLUGINDIR/bundle/ctrlp.vim
RUN git clone https://github.com/tpope/vim-repeat.git $PLUGINDIR/bundle/vim-repeat
RUN git clone https://github.com/bling/vim-airline.git $PLUGINDIR/bundle/vim-airline
RUN git clone https://github.com/tpope/vim-commentary.git $PLUGINDIR/bundle/vim-commentary
RUN git clone https://github.com/junegunn/vim-easy-align.git $PLUGINDIR/bundle/vim-easy-align
RUN git clone https://github.com/easymotion/vim-easymotion.git $PLUGINDIR/bundle/vim-easymotion
RUN git clone https://github.com/terryma/vim-multiple-cursors.git $PLUGINDIR/bundle/vim-multiple-cursors
RUN git clone https://github.com/altercation/vim-colors-solarized.git $PLUGINDIR/bundle/vim-colors-solarized

# add customized vimrc
ADD vimrc /etc/vim/vimrc.local

WORKDIR /work

CMD ["vim", "/work"]
