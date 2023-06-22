#!/bin/bash

mkdir remigio1000
cd remigio1000
git init
git pull https://github.com/rolhuama/pruebasdecodigo.git
gradle bootjar
docker build -t remigio1000 .
docker tag remigio1000 rolervengador/remigio1000
docker push rolervengador/remigio1000
docker run -dp 8080:8080 remigio1000
