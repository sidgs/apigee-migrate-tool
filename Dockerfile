FROM node:latest 

RUN mkdir app 
WORKDIR app
COPY ["app", "./" ]
RUN npm i 
RUN chmod +x *.sh