# extract data from container
rm -rf app
container_id=$(podman create opentesting:1.28)
podman cp $container_id:/app .
podman rm $container_id