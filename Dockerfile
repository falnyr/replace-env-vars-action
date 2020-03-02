FROM alpine

LABEL "name"="Replace tokens in file"
LABEL "maintainer"="Jan Alfred Richter <falnyr@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Replace env vars in file"
LABEL "com.github.actions.description"="Replaces environment variables in file using gettext envsubst."
LABEL "com.github.actions.icon"="align-left"
LABEL "com.github.actions.color"="purple"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache gettext

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
