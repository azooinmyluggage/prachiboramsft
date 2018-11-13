FROM microsoft/azure-cli:2.0.47

LABEL version="1.0.0"
LABEL repository="http://github.com/azooinmyluggage/prachiboramsft"
LABEL homepage="http://github.com/azooinmyluggage/prachiboramsft"
LABEL maintainer="Prachi Bora <pbora@microsoft.com>"

LABEL com.github.actions.name="Publish test results to AzDevOps"
LABEL com.github.actions.description="Publishes test results to AzDevOps for awesome reporting and analytics"
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

COPY "entrypoint.sh" "/entrypoint.sh"
#ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["sh", "/entrypoint.sh"]
#ENTRYPOINT echo "Hello world"

