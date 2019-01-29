FROM debian:stable-slim

LABEL "name"="sh"
LABEL "maintainer"="retgits"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="Shell for GitHub Actions"
LABEL "com.github.actions.description"="Runs one or more commands in an Action"
LABEL "com.github.actions.icon"="terminal"
LABEL "com.github.actions.color"="gray-dark"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /

RUN apt-get update &&\
    apt-get install curl jq -y &&\
    rm -rf /var/lib/apt/lists/* &&\
    chmod +x entrypoint.sh &&\
    mv entrypoint.sh /bin

ENTRYPOINT ["entrypoint.sh"]
