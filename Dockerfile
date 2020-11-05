FROM debian:9

RUN apt-get update -yq \
&& apt-get install curl gnupg -yq \
&& curl -sL https://deb.nodesource.com/setup_10.x | bash \
&& apt-get install nodejs -yq \
&& apt-get clean -y

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node"]

CMD ["app.js"]
