MACHINE=$(docker ps -a | grep -o yeventimg)
IMAGE=$(docker images | grep -o yeventimg)

if [ "$1" = "--build" ]; then
    if [ "$MACHINE" ]; then
        docker rm mymachine
    fi
    docker build -t yeventimg .
    docker run -it -p 8088:8088 --mount type=bind,source="$PWD/web",target="/home/web" --name mymachine yeventimg
elif [ "$MACHINE" ]; then
    docker start -a -i mymachine
elif [ "$IMAGE" ]; then
    docker run -it -p 8088:8088 --mount type=bind,source="$PWD/web",target="/home/web" --name mymachine yeventimg
else
    docker build -t yeventimg .
    docker run -it -p 8088:8088 --mount type=bind,source="$PWD/web",target="/home/web" --name mymachine yeventimg
fi