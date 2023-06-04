# TCC Monitoração
 Repositório do meu TCC de monitoração de API com Prometheus, Loki, Jaeger e Grafana

### Clone o repositório

```git clone https://github.com/crsklay/TCC-WSO2-Prometheus.git```

### Downloads extras
 Baixar o wso2mi-4.2.0 no site oficial: https://wso2.com/micro-integrator/, e adicionar a essa pasta raiz do clone.

### Iniciando a infraestrutura
 Execute o arquivo ```monitoracao.bat``` ou ```monitoracao.sh```, a depender do sistema operacional. O script cria a rede Docker, as imagens necessárias e inicializa os contêineres escritos no ```docker-compose.yml```.

### Monitoração
 O Grafana está disponível em ```localhost:3000```. O acesso é com admin/admin. Jaeger em ```localhost:16686```. O "Service" WSO2-SYNAPSE, responsável pelo rastreamento de mensagens aparecerá após a utilização de quaisquer das API's.

### Postman
 Para utilizar a API é necessário ter o Software Postman, e importar a coleção da API, que corresponde ao arquivo ```AtendimentoEmergencia.postman_collection.json```.