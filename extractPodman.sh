# extract data from container
rm -rf app
container_id=$(podman create ghcr.io/opentestingapi/opentesting:1.40)
podman cp $container_id:/app .
podman rm $container_id