FROM retgits/goc:1.0.2

LABEL "name"="gocenter"
LABEL "maintainer"="retgits"
LABEL "version"="0.2.0"

LABEL "com.github.actions.name"="GoCenter for GitHub Actions"
LABEL "com.github.actions.description"="Use GoCenter to get modules"
LABEL "com.github.actions.icon"="settings"
LABEL "com.github.actions.color"="green"

COPY LICENSE README.md THIRD_PARTY_NOTICE.md entrypoint.sh /

RUN chmod +x entrypoint.sh &&\
    mv entrypoint.sh /bin

ENTRYPOINT ["entrypoint.sh"]