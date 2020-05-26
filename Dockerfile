
# pull ofical image of node v13.14.0 alpine
FROM node:13.14.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# add package.json  and package-lock.json
# this approach is important to cache layers in docker
COPY ./app/package.json ./
COPY ./app/package-lock.json ./

# instal app depencies suing npm install
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# copy all application files
COPY ./app ./

# start app in dev mode
CMD ["npm", "start"]