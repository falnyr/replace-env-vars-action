FROM alpine

LABEL "name"="Replace tokens in file"
LABEL "maintainer"="Jan Alfred Richter <falnyr@gmail.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Replace env vars in file"
LABEL "com.github.actions.description"="Replaces __TOKENS__ with environment variables in file."
LABEL "com.github.actions.icon"="align-left"
LABEL "com.github.actions.color"="purple"

RUN apk update && apk upgrade

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
