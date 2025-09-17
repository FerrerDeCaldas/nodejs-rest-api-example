FROM node:22-alpine #usa la imagen base de node.js version 14

ENV PORT=4000

WORKDIR /usr/src/app #Define el directorio del trabajo dentro del contenedor

# Install dependencies
COPY package.json /usr/src/app/ #Copia todos los archivos locales al contenedor
RUN npm install #Instala las dependencias del proyecto

# Copy source
COPY server.js /usr/src/app

EXPOSE $PORT
CMD [ "npm", "start" ] #Comando por defecto al ejecturar el contenedor
