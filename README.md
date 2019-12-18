Crie um arquivo docker-compose.yml com as seguintes especificações:
* Quantidade de serviços: 1
* Nome do serviço: web
* Imagem: versão mais recente da imagem oficial de php
* Adicione um volume “/app” no contendo o diretório “scripts” fornecidos
* Expor a porta 80 do container web para a porta 8000 do host
* Adicione um health check para garantir que o web server está respondendo como esperado. Configurações do healthcheck
    * Iniciado junto com a aplicação
    * Intervalo: 5s
    * Timeout: 1s
    * Tentativas: 2