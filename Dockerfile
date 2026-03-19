FROM node:20.20.1-trixie-slim

LABEL maintainer="Subash SN"

WORKDIR /app

COPY package*.json ./

# Instalar dependencias primero (mejor práctica)
RUN npm install --omit=dev

COPY . .

RUN chmod +x /app/entrypoint.sh

EXPOSE 3000

CMD ["bash", "/app/entrypoint.sh"]