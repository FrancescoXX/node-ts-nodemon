FROM node:16 as base

# Port
EXPOSE 9000
WORKDIR /src

# Use the latest version of npm
RUN npm install npm@latest -g
COPY package*.json /

FROM base as prod
RUN npm install -g ts-node
RUN npm install --no-optional && npm cache clean --force
COPY . .
CMD ["ts-node", "src/index.ts"]

FROM base as dev
RUN npm install --no-optional && npm cache clean --force
COPY . .
CMD ["npm", "run", "dev"]