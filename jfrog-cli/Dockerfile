FROM debian:stretch-slim

LABEL "name"="jfrog-cli"
LABEL "maintainer"="retgits <lstigter@gmail.com>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="JFrog CLI for GitHub Actions"
LABEL "com.github.actions.description"="Runs a JFrog CLI Command"
LABEL "com.github.actions.icon"="compass"
LABEL "com.github.actions.color"="green"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md /
COPY entrypoint.sh /entrypoint.sh
RUN curl -fL https://getcli.jfrog.io | sh

ENTRYPOINT ["/entrypoint.sh"]