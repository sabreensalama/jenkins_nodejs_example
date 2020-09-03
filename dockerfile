FROM node:12
COPY nodeapp /nodeapp
WORKDIR /nodeapp
RUN npm install
RUN npm install @mysql/xdevapi --save --save-exact

CMD ["node", "/nodeapp/app.js"]