# vim_in_docker

A customized vim run in a Docker container, it could be run in MacOS, Linux with docker installed.

## Installation

    sudo -- sh -c "curl -LSso /usr/local/bin/vim http://bit.ly/vim_in_docker; chmod +x /usr/local/bin/vim"

![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/installation.gif)

## Plugins Selection and Why

[List of Plugins](https://github.com/bencao/vim_in_docker/blob/master/PLUGINS.md)

## Vim Frequently Used Key Bindings

### VIM in Docker Help
- [normal mode] `space then h` open vim_in_docker help in VIM

### Movement Key Bindings

- [normal mode] `space then f` quick jump to any words in the screen ![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/easy_motion.gif)
- [normal mode] `space then r` rebuild ctags for current directory
- [normal mode] `ctrl and ]`  jump to definition, need to rebuild ctags first
- [normal mode] `ctrl and o` jump back to last cursor position
- [normal mode] `ctrl and i` jump back to next cursor position
- [normal mode] `space then space` jump to and jump back between the current editing file and the last edited file

### Selection Key Bindings

- [normal mode] `ctrl and n` press multiple times to select multiple current word and edit all of them at the same time ![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/multi_cursor.gif)

### Comment Key Bindings

- [visual mode] `g then c` toggle comment

### Complete Key Bindings

- [insert mode] `tab` auto complete with next candidate
- [insert mode] `shift and tab` auto complete with previous candidate

### Alignment Key Bindings

- [visual mode] `enter then =` align selected lines by =
- [visual mode] `enter then :` align selected lines by :

### Search & Navigations Bindings

- [normal mode] `space then b` browse files, use `ctrl + j/k` to move between candidates ![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/ctrlp.gif)
- [normal mode] `space then a` search text patterns in directories using Ack, the result will be shown in a [Quickfix](http://usevim.com/2012/08/24/vim101-quickfix/) window

### Windows Key Bindings

- [normal mode] `space then t` toggle directory tree
- [normal mode] `space then T` open directory tree and select current editing file ![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/nerdtree.gif)
- [normal mode] `space then s` split a new horizontal window to the left
- [normal mode] `space then S` split a new vertical window to the top
- [normal mode] `space then o` toggle window/fullscreen
- [normal mode] `space then w` shortcut for :w
- [normal mode] `space then W` shortcut for :w!
- [normal mode] `space then q` shortcut for :q
- [normal mode] `space then Q` shortcut for :q!
- [normal mode] `ctrl and h/j/k/l` move left/up/down/right among windows ![Demo](https://github.com/bencao/vim_in_docker/blob/master/demo/windowing.gif)

### List Available Key Bindings

- `:map` all mode key mappings
- `:nmap` normal mode key mappings
- `:vmap` visual mode key mappings
- `:imap` insert mode key mappings


## Known Limitation

### MacOS users can only edit files under /Users directory

In MacOS we always need boot2docker which is a lightweight Linux where we could run docker(which relies on Linux Kernel features such as cgroups), when starting boot2docker, the typical installation only map the host's /Users directory inside the guest's /Users directory(reasonable from security perspective). Considering Vim in Docker is essentially a process in boot2docker VM, it can only read files inside the VM file system, that explains why we can only edit files in the /Users directory.
