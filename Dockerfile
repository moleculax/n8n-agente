FROM node:20-slim

# Instalar una versión específica que funciona con Node 20
RUN npm install -g n8n@1.78.3

# Resto igual...
WORKDIR /home/node

RUN useradd -m -u 1001 node && \
    chown -R node:node /home/node

USER node

ENV N8N_PORT=5678 \
    N8N_HOST=0.0.0.0

EXPOSE 5678

CMD ["sh", "-c", "n8n start --port=${PORT:-5678} --host=0.0.0.0"]
