FROM node:15.2.0

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

USER nobody

ENTRYPOINT ["npm", "run", "start"]