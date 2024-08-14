# extract data from container
rm -rf app
container_id=$(docker create ghcr.io/opentestingapi/opentesting:1.40)
docker cp $container_id:/app .
docker rm $container_id
