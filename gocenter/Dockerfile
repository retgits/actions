FROM debian:stretch-slim

LABEL "name"="gocenter"
LABEL "maintainer"="retgits"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="GoCenter for GitHub Actions"
LABEL "com.github.actions.description"="Runs actions using GoCenter"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="green"

ENV GOVERSION=1.11.5

COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /

RUN apt-get update &&\
    apt-get install curl git -y &&\
    rm -rf /var/lib/apt/lists/* &&\
    curl -fL https://getgoc.gocenter.io | sh &&\
    mv goc /bin &&\
    chmod +x entrypoint.sh &&\
    curl -fL -o go${GOVERSION}.linux-amd64.tar.gz https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz &&\
    tar -C /usr/local -xzf go${GOVERSION}.linux-amd64.tar.gz &&\
    rm go${GOVERSION}.linux-amd64.tar.gz &&\
    mv entrypoint.sh /bin

ENV PATH=$PATH:/usr/local/go/bin

ENTRYPOINT ["entrypoint.sh"]