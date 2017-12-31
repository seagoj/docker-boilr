# Run Rainbowstream in a container
#
# docker run -it --rm \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v $HOME/.rainbow_oauth:/root/.rainbow_oauth \ # mount config files
#	-v $HOME/.rainbow_config.json:/root/.rainbow_config.json \
#	--name rainbowstream \
#	jess/rainbowstream
#
FROM golang
LABEL maintainer "Jeremy Seago <seagoj@gmail.com>"

RUN go get github.com/tmrts/boilr
RUN go install github.com/tmrts/boilr

ENTRYPOINT [ "boilr" ]
