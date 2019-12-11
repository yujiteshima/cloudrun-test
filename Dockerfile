From node:latest

WORKDIR /src

COPY . .
Run yarn install \
    --prefer-offline \
    --frozen-lockfile\
    --non-interractive \
    --production=false

Run yarn build

CMD [ "yarn", "start" ]
