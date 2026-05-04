# Usa Node.js 22, que es el requisito de las últimas versiones de n8n
FROM node:22-slim

# Instala n8n globalmente
RUN npm install -g n8n

# Expone el puerto que Render usará (Render asigna la variable PORT automáticamente)
EXPOSE 5678

# Comando de inicio que usa el puerto que Render define
CMD ["sh", "-c", "n8n start --tunnel --port=${PORT:-5678}"]
