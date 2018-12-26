FROM debian:stretch-slim

LABEL "name"="jfrog-cli"
LABEL "maintainer"="retgits <lstigter@gmail.com>"
LABEL "version"="0.0.2"

LABEL "com.github.actions.name"="JFrog CLI for GitHub Actions"
LABEL "com.github.actions.description"="Runs a JFrog CLI Command"
LABEL "com.github.actions.icon"="compass"
LABEL "com.github.actions.color"="green"

ENV JFROG_CLI_OFFER_CONFIG=false
COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /
RUN apt-get update &&\
    apt-get install curl -y &&\
    rm -rf /var/lib/apt/lists/* &&\
    curl -fL https://getcli.jfrog.io | sh &&\
    mv jfrog /bin &&\
    chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]