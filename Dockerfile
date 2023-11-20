# imagem do node - ultima versão
FROM node:latest

# diretório que vou trabalhar
WORKDIR /usr/src/api

# copiar dá maquina
COPY . .

COPY ./.env.production ./.env

RUN npm install --quiet --no-optional --no-fund --loglevel=error

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:prod"]