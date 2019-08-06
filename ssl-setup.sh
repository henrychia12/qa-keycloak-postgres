#!/bin/sh

# bypass the keycloak HTTPS required issue when deployed to remote server
docker exec -it qa-keycloak-postgres_keycloak_1 psql -U keycloak -d keycloak -c "update realm set ssl_required='NONE'";

# restart keycloak
docker restart qa-keycloak-postgres_keycloak_1
