#test
FROM node:10.24.1-alpine

ENV NODE_ENV production
ENV DATABASE_URL postgresql://ade:katasandi@10.36.116.28:5432/literature

WORKDIR /app
COPY . .

RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize db:migrate --env production
EXPOSE 5002
CMD ["node","server.js"]

