# extract data from container
rm -rf app
container_id=$(docker create opentesting:1.26)
docker cp $container_id:/app .
docker rm $container_id
