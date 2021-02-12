# get the weather

function wttr
    curl -s "http://wttr.in" >/tmp/wttr

    if type -qf perl6
        cat /tmp/wttr | perl6 -e '.say for lines[0..6]'
    else
        cat /tmp/wttr | sed -n '1,7p'
    end
end
