FROM node:16

WORKDIR /root/react-js-quick-food-delivery-website/app
COPY package*.json ./
COPY . .
EXPOSE 3000
CMD [ "node", "App.js" ]
