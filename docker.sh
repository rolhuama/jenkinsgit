#!/bin/bash

mkdir señoresteban
cd señoresteban
git init
git pull https://github.com/rolhuama/pruebasdecodigo.git
gradle bootjar
docker build -t señoresteban .
docker tag señoresteban rolervengador/señoresteban
docker push rolervengador/señoresteban
