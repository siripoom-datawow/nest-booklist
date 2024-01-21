FROM node:20

USER node

WORKDIR /user/src/app

COPY --chown=node:node ./package.json ./

RUN npm install --frozen-lockfile

COPY --chown=node:node ./ ./

CMD ["npm", "run", "start:dev"]

