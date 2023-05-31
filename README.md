# tcc-monitoracao
 Repositório do meu TCC de monitoração de API com Prometheus e Grafana

### Downloads extras
 Baixar o wso2mi-4.2.0 no site oficial: https://wso2.com/micro-integrator/, e adicionar a essa pasta raiz.

 Também deve-se baixar o driver JDBC Postgres e adicionar a pasta wso2mi-4.2.0/lib.
 *Configurações adicionais do wso2mi-4.2.0 a serem inclusas.*
 *Adicionar Grafana Loki*

### Iniciando a infraestrutura
 Todos os comandos devem ser executados a partir do diretório raiz.
##### Criação da rede Docker
No docker-compose.yml, é utilizado a rede com o nome "meu-tcc":
```docker network create --subnet 192.168.10.0/24 --gateway 192.168.10.1 meu-tcc```

##### Imagens personalizadas
Criação da imagem do banco de dados Postgres utilizado pelas API's:
    ```docker build -t cassiorp23/db-militar:latest -f Dockerfiles/Dockerfile.banco .```

Criação da imagem Ubuntu com o wso2mi-4.2.0. As imagens subsequentes adicionam suas próprias configurações necessárias, além de cada API:
    ```docker build -t cassiorp23/wso2ubuntu:latest -f Dockerfiles/Dockerfile.buildmain .```

Criação das demais imagens personalizadas (as API's):
    ```docker build -t cassiorp23/wso2comorbidade:latest -f Dockerfiles/Dockerfile.comorbidade .```
    ```docker build -t cassiorp23/wso2medicamento:latest -f Dockerfiles/Dockerfile.medicamento .```
    ```docker build -t cassiorp23/wso2militar:latest -f Dockerfiles/Dockerfile.militar .```

##### Iniciando os contêineres
Atentar se as portas especificadas dentro do *docker-compose.yml* estão disponíveis:
```docker-compose up```