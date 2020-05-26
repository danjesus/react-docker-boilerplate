# React docker boilerplate

## A simple repository teaching how to use docker in development env for one react application

## Dependencies

 - Docker and docker-compose

## How docker-compose in dev mode

### Run in backround
```docker-compose up -d```

### Run in foregroud
```docker-compose up```

## Run docker-compose in production mode

### Run in background
```docker-compose -f docker-compose.prod.yml up -d```

### Run in foreground
```docker-compose -f docker-compose.prod.yml up```

## To generate a production container
``` docker build -f Dockerfile.prod -t boilerplate:prod . ```


