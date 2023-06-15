FROM node:16 as build

WORKDIR /hello-world-app

COPY package*.json ./

RUN npm install

COPY . ./

RUN npm run build

FROM nginx:1.25

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY --from=build /hello-world-app/build /usr/share/nginx/html