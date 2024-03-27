FROM node:lts-alpine

WORKDIR app/

COPY --link --chmod=755 ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]

CMD ["yarn", "run", "dev"]