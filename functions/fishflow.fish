function fishflow -d "My package"
  # Package entry-point
end

# edit the fish config
function cf
  set conf ~/.config/fish/config.fish
  vim $conf
  source $conf
end

# create a folder and change into it
function take -a name
  mkdir $name
  and cd $name
end

# get the weather
function wttr
  curl -s 'http://wttr.in' | raku -e '.say for lines[2..6]'
end
