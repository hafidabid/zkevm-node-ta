echo " stopping docker"
docker-compose -f docker-compose.yml down --remove-orphans
echo " building image "
make build-docker
echo " starting docker"
docker-compose --env-file config/environments/public/.env -f docker-compose.yml up -d