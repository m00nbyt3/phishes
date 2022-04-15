MACHINE=$(docker ps -a | grep -o yeventimg)
IMAGE=$(docker images | grep -o yeventimg)

if [ "$MACHINE" ]; then
    docker start -a -i mymachine
elif [ "$IMAGE" ]; then
    docker run -it --name mymachine yeventimg
else
    docker build -t yeventimg .
    docker run -it --name mymachine yeventimg
fi