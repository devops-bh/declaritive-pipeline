FROM node:latest

WORKDIR /app
COPY . .

# for Docker desktop only (CLI still needs -p 8080:8080 for portmapping) (also Jenkins may be running on port 8080)
EXPOSE 8080 8080

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

CMD ["node", "server.js"]
