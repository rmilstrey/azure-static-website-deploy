FROM microsoft/azure-cli

LABEL "com.github.actions.name"="Deploy repo to Azure Storage"
LABEL "com.github.actions.description"="Deploys files to Azure Storage"
LABEL "com.github.actions.icon"="box"
LABEL "com.github.actions.color"="green"
LABEL "repository"="https://github.com/rmilstrey/azure-static-website-deploy"
LABEL "homepage"="https://github.com/rmilstrey/azure-static-website-deploy"
LABEL "maintainer"="Ray Milstrey <rmilstrey@campuslabs.com>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
