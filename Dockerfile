FROM alpine:edge

MAINTAINER Davod "github.com/amitie10g"

LABEL description="Minimal, headless alpine based wine image."

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
	ncurses \
	winetricks \
	winetricks-bash-completion \
	bash && \
	ln -s /usr/bin/wine wine64

WORKDIR /root/.wine/drive_c/users/root/

CMD ["wine", "cmd"]
