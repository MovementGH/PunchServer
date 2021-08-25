#Create container we will build in
FROM debian:stable-slim as builder
RUN apt update && apt upgrade -y && apt install -y g++ make

#Copy files
COPY src /src

#Build
RUN make -C src -j

#Create container we will run in
FROM debian:stable-slim as runner

#Copy files
COPY --from=builder /PunchServer /PunchServer

#Set entrypoint
ENTRYPOINT ["/PunchServer"]