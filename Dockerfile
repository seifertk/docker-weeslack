FROM alpine:latest
LABEL Author="Kyle Seifert <seifert.kyle@gmail.com>"

ENV LANG C.UTF-8
ENV WEECHAT_HOME /weechat

RUN apk add --no-cache \
        ca-certificates \
        python \
        py-pip \
        weechat \
        weechat-python \
    && pip install websocket-client \
    && rm -rf /var/cache/apk/*

RUN adduser -S weechat -h /weechat && chown -R weechat /weechat

VOLUME /weechat

ADD https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py /weechat/python/autoload/wee_slack.py

WORKDIR /weechat
USER weechat

CMD [ "weechat" ]
