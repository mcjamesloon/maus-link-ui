FROM node:20-alpine

WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

RUN apk add --no-cache python3

COPY package.json ./
COPY package-lock.json ./
RUN npm update
RUN npm install

COPY . ./

CMD ["npm", "run", "start-react"]
