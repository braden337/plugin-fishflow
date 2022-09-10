# generate a password

function pw -a n
    set -q n[1]; or set n 1
    curl -s 'https://www.random.org/passwords/?num=100&len=24&format=plain&rnd=new' | sort -R | head -n 1
end

