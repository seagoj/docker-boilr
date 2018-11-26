docker-boilr
===

## Build
`docker build -t seagoj/docker-boilr . --no-cache --build-arg UID="$(id -u)" --build-arg GID="$(id -g)"`

## Run
docker run -it --rm \
    -v `pwd`:`pwd` -w `pwd` \
    -v "${HOME}"/.config/boilr:/home/boilr/.config/boilr \
    --name boilr \
    boilr \
    "${@}"
