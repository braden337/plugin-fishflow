# compress video files for sharing

function vidcomp --argument-names filename
    if type -qf ffmpeg
        set -l base (string split -rm1 . $filename)[1];
        ffmpeg -i $filename -s hd720 -c:v libx264 -crf 28 -c:a aac $base.compressed.mp4;
    else
        echo "ffmpeg not available, cannot compress video"
    end
end
