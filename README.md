# BUILD

docker build -t fernandoe/senchacmd:5.1.0 .


# RUN

docker run \
  --rm \
  --name senchacmd \
  -v ${PWD}:/app \
  -i \
  -t fernandoe/senchacmd:5.1.0 \
  /bin/bash
