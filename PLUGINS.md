# List of Plugins

Principles

- Prefer light plugin with 80% feature other than heavy plugin with 100% feature
- Plugins that have more than 1 dependencies are unacceptable
- Get rid of low priority plugins if possible

Definition of Importance

- **Essential**: Unable to have experience without it
- **High**: Significantly decrease of experience
- **Medium**: Sensible decrease of experience
- **Low**: Totally nice to have

| Plugin        | Value           | Importance | Alternatives |
| :------------ | :-------------- | :--------: | :----------- |
| [ag.vim](https://github.com/rking/ag.vim) | Search text patterns in directories | Essential | [CtrlSF](https://github.com/dyng/ctrlsf.vim) (not utilizing the vim Quickfix List) |
| [CtrlP](https://github.com/kien/ctrlp.vim.git) | Quickly navigate to any files given a fuzzy matching pattern | Essential | [Unite](https://github.com/Shougo/unite.vim.git) (sometimes hung for big projects) |
| [elm.vim](https://github.com/lambdatoast/elm.vim) | Elm lang support: syntax highlighting and indent | High/Low (It depends on whether we write Elm or not) | N/A |
| [NerdTree](https://github.com/scrooloose/nerdtree.git) | Tree view of project files and handy create/delete/update file operations | Essential | [netrw](http://www.vim.org/scripts/script.php?script_id=1075) (shipped with VIM but missing features) |
| [SuperTab](https://github.com/ervandew/supertab.git) | Autocomplete by hitting tabs which help increasing productivity | High | [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) (better experience but too heavy) |
| [VIM Airline](https://github.com/bling/vim-airline.git) | Beautiful status line | Medium | [Powerline](https://github.com/powerline/powerline) (too heavy) |
| [VIM better whitespace](https://github.com/ntpeters/vim-better-whitespace.git) | Showing trailing white space and auto strip when quit | Medium | [VIM trailing whitespace](https://github.com/bronson/vim-trailing-whitespace) (older) |
| [VIM Colors Solarized](https://github.com/altercation/vim-colors-solarized.git) | A popular & colorful color theme | High | [VIM color gallery](http://cocopon.me/app/vim-color-gallery/) |
| [VIM Commentary](https://github.com/tpope/vim-commentary.git) | Toggle comment/uncomment for selected lines | Medium | [NerdCommenter](https://github.com/scrooloose/nerdcommenter) |
| [VIM Easy Align](https://github.com/junegunn/vim-easy-align.git) | Align code lines in a manner that ':' or '=' symbol in the same column | Medium | N/A |
| [VIM EasyMotion](https://github.com/easymotion/vim-easymotion.git) | Move to anywhere in screen in a few key strokes | High | N/A |
| [VIM Elixir](https://github.com/elixir-lang/vim-elixir.git) | Elixir lang support: syntax highlighting and indent | High/Low (It depends on whether we write Elixir or not) | N/A |
| [VIM Javascript](https://github.com/pangloss/vim-javascript.git) | JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation | High/Low (It depends on whether we write Javascript or not) | N/A |
| [VIM Fugitive](https://github.com/tpope/vim-fugitive.git) | Git integration | Low | N/A |
| [VIM Gitgutter](https://github.com/airblade/vim-gitgutter.git) | Show file changes (diff to git HEAD) on the right | Low | [VIM Signify](https://github.com/mhinz/vim-signify) (support multiple VCS but we have only git install in container so it's not that useful) |
| [VIM Multiple Cursor](https://github.com/terryma/vim-multiple-cursors.git) | Select the same keyword in different lines, then change them together | High | N/A |
| [VIM Repeat](https://github.com/tpope/vim-repeat.git) | Wrap plugin operations as a "Change" so it can be repeated or undoed | Medium | N/A |
| [VIM Sleuth](https://github.com/tpope/vim-sleuth.git) | Automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file | High | N/A |
| [VIM Surround](https://github.com/tpope/vim-surround.git) | Surround parentheses, brackets, quotes, XML tags, and more | Medium | N/A |
