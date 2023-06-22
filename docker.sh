#!/bin/bash
cd remigio1000
gradle bootjar
docker build -t remigio1000 .
docker push rolervengador/remigio1000
