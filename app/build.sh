#! /bin/bash


if [ -f Dockerfile ]
then
    echo "el DockerFile existe"
else   
    echo FROM node:16-alpine > Dockerfile

    echo RUN npm install -g ts-node >> Dockerfile

    echo WORKDIR /usr/src/app >> Dockerfile

    echo COPY package*.json ./ >> Dockerfile

    echo COPY . . >> Dockerfile

    echo RUN npm install >> Dockerfile

    echo RUN npm install -g nodemon >> Dockerfile

    echo EXPOSE 3000 >> Dockerfile

    echo CMD [ '"npm"', '"start"' ] >> Dockerfile

fi

docker build -t santigeracee/app.v:0.0.0 .
