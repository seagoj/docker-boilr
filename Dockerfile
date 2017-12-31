# Run Rainbowstream in a container
#
# docker run -it --rm \
#	-v /etc/localtime:/etc/localtime:ro \
#	--name boilr \
#	seagoj/boilr

FROM golang
LABEL maintainer "Jeremy Seago <seagoj@gmail.com>"

RUN go get github.com/tmrts/boilr
RUN go install github.com/tmrts/boilr

ENTRYPOINT [ "boilr" ]
