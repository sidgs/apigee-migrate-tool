FROM node:latest 

RUN mkdir app 
WORKDIR app
COPY ["input", "tasks", "*.js", "*.sh", "util", "package.json", "./" ]
RUN npm i 
RUN npm i grunt -g
RUN chmod +x *.sh