# get the weather

function wttr
    curl -s "http://wttr.in" >/tmp/wttr

    if type -q raku
        cat /tmp/wttr | raku -e '.say for lines[0..6]'
    else
        cat /tmp/wttr | sed -n '1,7p'
    end
end
