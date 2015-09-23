# vim_in_docker
A personal customized vim run in a Docker container, the goal is to provide minimal but frequently used features for daily development.

## Usage

Step 1: add vid alias to .bashrc or .zshrc, then reconnect to take effect
```
alias vid='docker run -it -v $(pwd):/work -u $(id -u):$(id -g) --rm bencao/vim_in_docker'
```

Step 2: go to project directory and run vid
```
cd myproject && vid
```

## Vim Frequently Used Key Bindings

### List Available Key Bindings

- ```:map``` all mode key mappings
- ```:nmap``` normal mode key mappings
- ```:vmap``` visual mode key mappings
- ```:imap``` insert mode key mappings

### Movement Key Bindings

- [normal mode] ```f then id``` quick jump to any words in the screen, the id for each word will be shown once you pressed ```f```
- [normal mode] ```ctrl and ]```  jump to definition, need to rebuild ctags first with ```ctags -R --exclude=node_modules```
- [normal mode] ```ctrl and o``` jump back to last cursor position
- [normal mode] ```ctrl and i``` jump back to next cursor position
- [normal mode] ```space then space``` jump to and jump back between the current editing file and the last edited file
- [normal mode] ``` ` then ` ``` jump to and jump back between the current editing line and the last edited line

### Selection Key Bindings

- [normal mode] ```ctrl and n``` press multiple times to select multiple current word and edit all of them at the same time

### Comment Key Bindings

- [visual mode] ```g then c``` toggle comment

### Alignment Key Bindings

- [visual mode] ```enter then =``` align selected lines by =
- [visual mode] ```enter then :``` align selected lines by :

### Buffers (Windows) Key Bindings

- [normal mode] ```space then b``` browser files, use ```ctrl + j/k``` to move between candidates
- [normal mode] ```space then w``` open a new horizontal buffer on the right
- [normal mode] ```space then q``` shortcut for :q
- [normal mode] ```space then t``` open directory tree on the left
- [normal mode] ```ctrl and h/j/k/l``` move left/up/down/right among windows

