FROM retgits/goc:1.0.2

LABEL "name"="gocenter"
LABEL "maintainer"="retgits"
LABEL "version"="0.2.0"

LABEL "com.github.actions.name"="GoCenter for GitHub Actions"
LABEL "com.github.actions.description"="Runs actions using GoCenter"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="green"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /
ENV PATH=$PATH:/usr/local/go/bin

ENTRYPOINT ["entrypoint.sh"]