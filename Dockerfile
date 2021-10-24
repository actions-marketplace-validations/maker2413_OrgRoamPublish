FROM maker2413/orgpublish:latest

RUN apk add \
    gcc \
    libc-dev

RUN rm -rf /opt/*

COPY install.el publish.el ./

RUN emacs --batch --load install.el

CMD "emacs" "-Q" "--script" "/opt/publish.el"
