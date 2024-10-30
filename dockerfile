FROM openjdk:18-jdk-alpine

WORKDIR /minecraft

COPY ./server.properties ./
COPY ./world/ ./world/
COPY ./server.jar ./
COPY ./eula.txt ./
COPY banned-ips.json ./
COPY banned-players.json ./
COPY ops.json ./
COPY usercache.json ./
COPY whitelist.json ./

CMD ["java", "-jar" "./server.jar", "--nogui"]
