# generate a password

function pw
    set -l x (random 1 100)
    set -l y (random 1 100)
    set -l z (random 1 100)
    set -l s (symbol)

    curl -s "https://www.random.org/passwords/?num=100&len=8&format=plain&rnd=new" >/tmp/pw

    cat /tmp/pw | sed -n -e "$x"p -e "$y"p -e "$z"p | string join $s | string replace $s (symbol)

    rm /tmp/pw
end


function hex -a n
    printf %x $n
end

function symbol
    string unescape "\\x"(hex (random 33 47))
end