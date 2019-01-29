FROM debian:stretch-slim

LABEL "name"="jfrog-cli"
LABEL "maintainer"="retgits"
LABEL "version"="0.1.0"

LABEL "com.github.actions.name"="JFrog CLI for GitHub Actions"
LABEL "com.github.actions.description"="Runs a JFrog CLI Command"
LABEL "com.github.actions.icon"="compass"
LABEL "com.github.actions.color"="green"

ENV GOVERSION=1.11.5

COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /
RUN apt-get update &&\
    apt-get install curl git -y &&\
    rm -rf /var/lib/apt/lists/* &&\
    curl -fL https://getcli.jfrog.io | sh &&\
    mv jfrog /bin &&\
    chmod +x entrypoint.sh &&\
    curl -fL -o go${GOVERSION}.linux-amd64.tar.gz https://dl.google.com/go/go${GOVERSION}.linux-amd64.tar.gz &&\
    tar -C /usr/local -xzf go${GOVERSION}.linux-amd64.tar.gz &&\
    rm go${GOVERSION}.linux-amd64.tar.gz &&\
    mv entrypoint.sh /bin

ENV JFROG_CLI_OFFER_CONFIG=false
ENV PATH=$PATH:/usr/local/go/bin

ENTRYPOINT ["entrypoint.sh"]