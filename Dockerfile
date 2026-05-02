# Usar una imagen base de Node directamente
FROM node:20-slim

# Instalar n8n globalmente
RUN npm install -g n8n@latest

# Crear directorio de trabajo
WORKDIR /home/node

# Crear usuario no-root
RUN useradd -m -u 1001 node && \
    chown -R node:node /home/node

USER node

# Variables de entorno por defecto
ENV N8N_PORT=5678 \
    N8N_HOST=0.0.0.0

EXPOSE 5678

# Comando para iniciar n8n
CMD ["sh", "-c", "n8n start --port=${PORT:-5678} --host=0.0.0.0"]
