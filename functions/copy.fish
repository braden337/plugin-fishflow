# pipe standard output to your clipboard

function copy
    if type -qf pbcopy
        pbcopy
    else if type -qf xclip
        xclip -sel clip
    else if type -qf clip.exe
        clip.exe
    else
        echo "Cannot copy to clipboard"
    end
end
