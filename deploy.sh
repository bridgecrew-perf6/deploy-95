docker build -t vnv_serve_it --build-arg CONFIG_FILE=./config.json .
docker run --network="host" -v /var/run/docker.sock:/var/run/docker.sock vnv_serve_it
