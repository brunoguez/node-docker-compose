# Use uma imagem base oficial do Node.js
FROM node:20

# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie o package.json e package-lock.json
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie o código do aplicativo
COPY . .

# Exponha a porta na qual o app vai rodar
EXPOSE 3000

# Comando para rodar o aplicativo
CMD ["node", "server.js"]
