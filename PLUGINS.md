# List of Plugins

Principles

- Prefer light plugin with 80% feature other than heavy plugin with 100% feature
- Plugins that have more than 1 dependencies are unacceptable
- Get rid of low priority plugins if possible

Definition of Importance

- *Essential*: Unable to have experience without it
- *High*: Significantly decrease of experience
- *Medium*: Sensible decrease of experience
- *Low*: Totally nice to have

| Plugin        | Value           | Importance | Alternatives |
| :------------ | :-------------- | :--------: | :----------- |
| [CtrlP](https://github.com/kien/ctrlp.vim.git) | Quickly navigate to any files given a fuzzy matching pattern | Essential | [Unite](https://github.com/Shougo/unite.vim.git) (sometimes hung for big projects) |
| [NerdTree](https://github.com/scrooloose/nerdtree.git) | Tree view of project files and handy create/delete/update file operations | Essential | [netrw](http://www.vim.org/scripts/script.php?script_id=1075) (shipped with VIM but missing features) |
| [VIM Colors Solarized](https://github.com/altercation/vim-colors-solarized.git) | A popular & colorful color theme | High | [VIM color gallery](http://cocopon.me/app/vim-color-gallery/) |
| [Super Tab](https://github.com/ervandew/supertab.git) | Autocomplete by hitting tabs which help increasing productivity | High | [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (better experience but too heavy) |
| [VIM Easy Motion](https://github.com/easymotion/vim-easymotion.git) | Move to anywhere in screen in a few key strokes | High | N/A |
| [VIM Multiple Cursor](https://github.com/terryma/vim-multiple-cursors.git) | Select the same keyword in different lines, then change them together | High | N/A |
| [VIM Repeat](https://github.com/tpope/vim-repeat.git) | Wrap plugin operations as a "Change" so it can be repeated or undoed | Medium | N/A |
| [VIM Airline](https://github.com/bling/vim-airline.git) | Beautiful status line | Medium | [Powerline](https://github.com/powerline/powerline) (too heavy) |
| [VIM Easy Align](https://github.com/junegunn/vim-easy-align.git) | Align code lines in a manner that ':' or '=' symbol in the same column | Medium | N/A |
| [VIM Commentary](https://github.com/tpope/vim-commentary.git) | Toggle comment/uncomment for selected lines | Medium | [NerdCommenter](https://github.com/scrooloose/nerdcommenter) |
| [VIM Elixir](https://github.com/elixir-lang/vim-elixir.git) | Elixir lang support: syntax highlighting and indent | High/Low (It depends on whether we write Elixir or not) | N/A |
| [VIM Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator.git) | Seamless window integration with Tmux | Medium/Low (depends on whether we use tmux or not) | N/A |
| [VIM Fugitive](https://github.com/tpope/vim-fugitive.git) | Git integration | Low | N/A |
| [VIM Gitgutter](https://github.com/airblade/vim-gitgutter.git) | Show file changes (diff to git HEAD) on the right | Low | [VIM Signify](https://github.com/mhinz/vim-signify) (support multiple VCS but we have only git install in container so it's not that useful) |
