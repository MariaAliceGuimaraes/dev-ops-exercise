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