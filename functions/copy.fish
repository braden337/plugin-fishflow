# pipe standard output to your clipboard

function copy
    if type -q pbcopy
        pbcopy
    else if type -q xclip
        xclip -sel clip
    else
        echo "Cannot copy to clipboard"
    end
end