#!/bin/sh
docker build -t co.edu.utp.microservicios/hola-mundo2 .
docker rm -f hola-mundo2 || true && docker run -d -p 8081:8081 --name hola-mundo2 co.edu.utp.microservicios/hola-mundo2 
