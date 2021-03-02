# open files

function open -a place
    if test -e $place
        if type -qf open
            /usr/bin/open $place
        else if type -qf explorer.exe
            explorer.exe (string trim -c \/ $place)
        else
            echo "Unable to open '$place'"
            return 1
        end
    else
        echo "'$place' doesn't exist"
        return 1
    end

    return 0
end
