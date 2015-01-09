Usage
=====

#### BUILD

```sh
docker build -t fernandoe/senchacmd:5.1.0 .
```

#### RUN

```sh
docker run \
  --rm \
  --name senchacmd \
  -v ${PWD}:/app \
  -i \
  -t fernandoe/senchacmd:5.1.0 \
  /bin/bash
```


Author
======

#### Created and maintained by

Fernando Espíndola

fer.esp@gmail.com

http://twitter.com/feresp
