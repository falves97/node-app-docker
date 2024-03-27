#!/bin/sh
set -e

if [ "$1" = 'yarn' ]; then

  if [ ! -f package.json ]; then
		rm -Rf tmp/

    yarn create next-app tmp --ts --eslint --tailwind --app --src-dir --use-yarn --import-alias "@/*"

    cd tmp
    cp -Rp . ..
    cd -
    rm -Rf tmp/

  fi
  
  if [ -z "$(ls -A 'node_modules/' 2>/dev/null)" ]; then
      yarn
  fi

  chown -R node:node .

fi

exec "$@"