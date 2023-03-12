#!/bin/sh
docker build -t zinzolin .
docker run --rm -it -p 8888:8888 zinzolin
