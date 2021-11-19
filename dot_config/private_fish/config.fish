alias vi='nvim'
alias vim='nvim'
#alias less='/usr/share/nvim/runtime/macros/less.sh'

if status is-interactive
    # Commands to run in interactive sessions can go here
    source /usr/share/powerline/bindings/fish/powerline-setup.fish; powerline-setup
end

set fish_color_command white   

# rbenv
status --is-interactive; and source (rbenv init -|psub)

# direnv
#direnv hook fish | source


function __check_nvm --on-variable PWD --description 'Do nvm stuff'
  if test -f .nvmrc
    set node_version (node -v)
    set nvmrc_node_version (cat .nvmrc) 
    if [ $nvmrc_node_version != $node_version ]
      nvm use
    end
  end
end

__check_nvm

function fish_greeting
  set result (curl "https://api.quotable.io/random" 2>/dev/null)
  set quote (echo $result | jq ".content")
  set author (echo $result | jq ".author")
  echo 
  echo $quote | lolcat
  echo " - $author" | lolcat
  echo 
end
