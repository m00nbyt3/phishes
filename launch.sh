MACHINE=$(docker ps -a | grep -o yeventimg)
IMAGE=$(docker images | grep -o yeventimg)

if [ "$1" = "--build" ]; then
    if [ "$MACHINE" ]; then
        docker rm mymachine
    fi
    docker build -t yeventimg .
    docker run -it --name mymachine -p 80:8088 yeventimg
elif [ "$MACHINE" ]; then
    docker start -a -i mymachine
elif [ "$IMAGE" ]; then
    docker run -it --name mymachine yeventimg
else
    docker build -t yeventimg .
    docker run -it --name mymachine yeventimg
fi