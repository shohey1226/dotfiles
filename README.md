## Install

```
curl -fsLS git.io/chezmoi | sh -
#./bin/chezmoi init git@github.com:shohey1226/dotfiles.git
./bin/chezmoi init https://github.com/shohey1226/dotfiles.git
./bin/chezmoi apply -v
```

## Tmux

Run `prefix -I` in tmux to fetch plugins

## Neovim

If needed, run `:call dein#update()`

### Coc
```
# install node and yarn.
npm install yarn -g
:call coc#util#install()
```



