# edit the fish config

function cf
    set conf ~/.config/fish/config.fish
    vim $conf
    source $conf
end
