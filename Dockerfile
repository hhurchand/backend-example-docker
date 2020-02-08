FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl software-properties-common
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN node -v
RUN npm -v

COPY . .
EXPOSE 8000

RUN npm install
CMD ["npm", "start"]