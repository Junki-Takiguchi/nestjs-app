FROM node:latest
WORKDIR /
RUN npm install -g typescript \
    @types/node \
    ts-node

# prettier
RUN npm install -g prettier

# ESLint
RUN npm install -g eslint \
    @typescript-eslint/parser \
    @typescript-eslint/eslint-plugin

# ESLint config for Airbnb
RUN npm install -g eslint-config-airbnb-base \
    eslint-plugin-import \
    eslint-config-airbnb-typescript


