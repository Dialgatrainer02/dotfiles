#!/bin/bash

docker run -d --rm -p 6969:6969 -it nyamisty/alt_anisette_server
sleep 5
export ALTSERVER_ANISETTE_SERVER="http://127.0.0.1:6969"
