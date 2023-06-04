#!/bin/bash
echo "Criando a rede Docker..."
docker network create --subnet 192.168.10.0/24 --gateway 192.168.10.1 meu-tcc
echo "Criando o banco de dados..."
docker build -t cassiorp23/db-militar:latest -f Dockerfiles/Dockerfile.banco .
echo "Construindo as imagens Docker..."
docker build -t cassiorp23/wso2ubuntu:latest -f Dockerfiles/Dockerfile.buildmain .
docker build -t cassiorp23/wso2comorbidade:latest -f Dockerfiles/Dockerfile.comorbidade .
docker build -t cassiorp23/wso2medicamento:latest -f Dockerfiles/Dockerfile.medicamento .
docker build -t cassiorp23/wso2militar:latest -f Dockerfiles/Dockerfile.militar .
echo "Imagens Docker construídas com sucesso"
echo "Iniciando Docker Compose..."
docker-compose -p monitoracao up
