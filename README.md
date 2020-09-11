Crie um arquivo docker-compose.yml com as seguintes especificações:
* Quantidade de serviços: 1
* Nome do serviço: web
* Imagem: versão mais recente da imagem oficial de php
* Crie uma pasta `app` com os arquivos fornecidos organizada da seguinte forma:
```
app
   ├── index.php
   ├── css
   │   └── styles.css
   └── js
       └── scripts.js
```
* Monte o volume `/var/www/html` no container usando a pasta `app`
* Expor a porta 80 do container web para a porta 8000 do host
* Adicione um health check para garantir que o web server está respondendo como esperado. Configurações do healthcheck
    * Iniciado junto com a aplicação
    * Intervalo: 5s
    * Timeout: 1s
    * Tentativas: 2

---

Como referência, se o container executar corretamente iremos verificar o estado da aplicação.

Uma das formas que usamos é o comando docker ps: 

### Exemplo de container status healthy

```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                   PORTS                  NAMES
3603b08b7d53        x_web               "docker-php-entrypoi…"   8 minutes ago       Up 8 minutes (healthy)   0.0.0.0:8000->80/tcp   x_web_1
```

### Exemplo de container status unhealthy

```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS                  NAMES
0fc2434c462f        x_web               "docker-php-entrypoi…"   31 seconds ago      Up 30 seconds (unhealthy)   0.0.0.0:8000->80/tcp   x_web_1
```

### Exemplo sem healthcheck:

```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
08292ede4c30        x_web               "docker-php-entrypoi…"   16 seconds ago      Up 15 seconds       0.0.0.0:8000->80/tcp   x_web_1
```