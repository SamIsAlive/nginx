FROM nginx:alpine

# Copia os arquivos do site
COPY site /usr/share/nginx/html

# Copia o arquivo .htpasswd para o diretório correto dentro do contêiner
COPY site/.htpasswd /etc/nginx/.htpasswd

# Copia sua configuração personalizada do Nginx
COPY default.conf /etc/nginx/conf.d/default.conf
