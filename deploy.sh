docker pull ghcr.io/vnvlabs/serve:$1
docker build -t vnv_serve_it --build-arg FROM_IMAGE=ghcr.io/vnvlabs/serve:$1 --build-arg CONFIG_FILE=$2 .

docker container kill vnvlabs
docker container rm vnvlabs

docker run -td --name=vnvlabs --network="host" -v /var/run/docker.sock:/var/run/docker.sock vnv_serve_it
docker logs --follow vnvlabs

