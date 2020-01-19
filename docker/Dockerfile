FROM ubuntu

RUN apt-get update && apt-get install -y \
        apt-utils vim portaudio19-dev python-pyaudio python3-pyaudio python3-venv python3-dev

RUN apt-get install -y alsa-utils libasound2-dev libsndfile1 tree


RUN rm -rf /var/lib/apt/lists/*

COPY asound.conf /etc/asound.conf
COPY entrypoint.sh /tmp/entrypoint.sh

RUN groupadd -g 1000 val
RUN useradd -g val -G audio -u 1000 val

ENTRYPOINT [ "/tmp/entrypoint.sh" ]