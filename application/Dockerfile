FROM node:10
RUN mkdir /application
WORKDIR /application

RUN npm install
RUN npm install express
RUN npm install -g nodemon
COPY ./package.json /application/package.json
COPY ./package-lock.json /application/package-lock.json
COPY . /application/
EXPOSE 8080
CMD ["nodemon", "app.js"]
