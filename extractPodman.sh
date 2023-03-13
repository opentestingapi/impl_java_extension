# extract data from container
rm -rf app
container_id=$(podman create opentesting:1.26)
podman cp $container_id:/app .
podman rm $container_id