# tcc-monitoracao
 Repositório do meu TCC de monitoração de API com Prometheus e Grafana

# Downloads extras
 Baixar o wso2mi-4.2.0 no site oficial: https://wso2.com/micro-integrator/, e adicionar a essa pasta raiz.

 Também deve-se baixar o driver JDBC Postgres e adicionar a pasta wso2mi-4.2.0/lib.
 *Configurações adicionais do wso2mi-4.2.0 a serem inclusas.*

# Iniciando a infraestrutura

 ```docker build -t buildmain -f Dockerfile.buildman```
 Cria-se a máquina Ubuntu principal com o WSO2, depois isso as outras. Também há de criar o banco.
 ```docker-compose up``` para iniciar e se atentar com as portas especificadas em docker-compose.yml.