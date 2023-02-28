# pull official base image
FROM node:19-alpine

# set working directory
WORKDIR /app

# ensure executables created inside container can be found
ENV PATH /app/node_modules/.bin:$PATH

# install build dependencies
ENV BUILD_DEPS python3 make g++
RUN apk add --no-cache --virtual .deps $BUILD_DEPS

# install app dependencies
COPY package.json ./
COPY yarn.lock ./
RUN yarn

# remove build dependencies
RUN apk del .deps

# add app
COPY . ./

# start app
CMD ["yarn", "start", "-H", "0.0.0.0"]