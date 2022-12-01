FROM node:latest

WORKDIR /app
COPY . .

# for Docker desktop only (CLI still needs -p 8080:8080 for portmapping) (also Jenkins may be running on port 8080)
EXPOSE 8080 8080

CMD ["node", "server.js"]
