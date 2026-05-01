FROM n8nio/n8n:latest
ENV TZ=America/Argentina/Buenos_Aires
EXPOSE 5678
VOLUME /home/node/.n8n
CMD ["n8n", "start"]
