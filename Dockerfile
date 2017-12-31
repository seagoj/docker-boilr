# Run Rainbowstream in a container
#
# docker run -it --rm \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v $PWD:/home/user/cwd \
#	-v $HOME/.config/boilr:/home/user/.config/boilr \
#	--name boilr \
#	seagoj/docker-boilr

FROM golang
LABEL maintainer "Jeremy Seago <seagoj@gmail.com>"

WORKDIR /home/user/cwd
RUN go get github.com/tmrts/boilr
RUN go install github.com/tmrts/boilr

ENTRYPOINT [ "boilr" ]
