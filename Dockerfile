FROM golang:latest
RUN apt-get update && apt-get -y install git make
WORKDIR /go/src/
RUN git clone https://github.com/accurics/terrascan.git
WORKDIR /go/src/terrascan
RUN git fetch --all && git checkout master
RUN make build
ENV PATH="${PATH}:/go/src/terrascan/bin"
RUN terrascan init