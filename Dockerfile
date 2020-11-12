FROM node:12-buster-slim AS build
RUN mkdir app
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "node", "dist/main.js" ]