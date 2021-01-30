# get the weather
function wttr
    curl -s 'http://wttr.in' | raku -e '.say for lines[2..6]'
end