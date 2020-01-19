docker run -it \
    -v "$HOME:$HOME" \
    --device /dev/snd \
    --user $(id -u) \
    vace117/house-porcupine
