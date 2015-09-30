# vim_in_docker

A personal flavored vim run in a Docker container, the goal is to provide minimal but frequently used features for daily development

## Installation

```sudo curl -LSso /usr/local/bin/vim https://raw.githubusercontent.com/bencao/vim_in_docker/master/vim```

## Vim Frequently Used Key Bindings

### Movement Key Bindings

- [normal mode] ```space then f``` quick jump to any words in the screen
- [normal mode] ```space then r``` rebuild ctags for current directory
- [normal mode] ```ctrl and ]```  jump to definition, need to rebuild ctags first
- [normal mode] ```ctrl and o``` jump back to last cursor position
- [normal mode] ```ctrl and i``` jump back to next cursor position
- [normal mode] ```space then space``` jump to and jump back between the current editing file and the last edited file
- [normal mode] ``` ` then ` ``` jump to and jump back between the current editing line and the last edited line

### Selection Key Bindings

- [normal mode] ```ctrl and n``` press multiple times to select multiple current word and edit all of them at the same time

### Comment Key Bindings

- [visual mode] ```g then c``` toggle comment

### Complete Key Bindings

- [insert mode] ```tab``` auto complete with next candidate
- [insert mode] ```shift and tab``` auto complete with previous candidate

### Alignment Key Bindings

- [visual mode] ```enter then =``` align selected lines by =
- [visual mode] ```enter then :``` align selected lines by :

### Windows Key Bindings

- [normal mode] ```space then b``` browse files, use ```ctrl + j/k``` to move between candidates
- [normal mode] ```space then w``` open a new horizontal window on the right
- [normal mode] ```space then W``` open a new vertical window on the right
- [normal mode] ```space then q``` shortcut for :q
- [normal mode] ```space then Q``` shortcut for :q!
- [normal mode] ```space then t``` toggle directory tree
- [normal mode] ```space then T``` open directory tree and select current editing file
- [normal mode] ```ctrl and h/j/k/l``` move left/up/down/right among windows

### List Available Key Bindings

- ```:map``` all mode key mappings
- ```:nmap``` normal mode key mappings
- ```:vmap``` visual mode key mappings
- ```:imap``` insert mode key mappings

