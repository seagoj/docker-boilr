# Run Rainbowstream in a container
#
# docker run -it --rm \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v $PWD:/root/cwd \
#	-v $HOME/.config/boilr:/root/.config/boilr \
#	--name boilr \
#	seagoj/docker-boilr

FROM golang
LABEL maintainer "Jeremy Seago <seagoj@gmail.com>"

WORKDIR /root/cwd
RUN go get github.com/tmrts/boilr
RUN go install github.com/tmrts/boilr

ENTRYPOINT [ "boilr" ]
