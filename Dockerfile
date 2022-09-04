FROM node:16.17.0

RUN mkdir -p /app/src
COPY . /app/src
WORKDIR /app/src

ENV HOST "0.0.0.0"

RUN npm install
RUN npm run build
RUN npm cache clean --force

EXPOSE 3000
CMD ["npm", "start"]
