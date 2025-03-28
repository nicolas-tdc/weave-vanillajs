# weave-vanillajs

## Setup
cp .env.dist .env

## Start
docker-compose up -d --build --remove-orphans

## Stop
docker-compose down

## Reset (destructive!)
docker-compose down -v