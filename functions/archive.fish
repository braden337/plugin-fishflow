# create an archive of a git repository

function archive
    if type -qf git
        git archive -9 -o (basename (pwd)).zip HEAD
    else
        echo "Git isn't on your system, unable to create archive"
    end
end
