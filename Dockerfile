FROM node:12

RUN mkdir /home/azureuserDoc
WORKDIR /home/azureuserDoc

RUN cd /home/azureuserDoc
COPY ./ .

RUN npm i -g pm2
RUN npm i 

CMD [ "pm2-runtime", "start", "./bin/www"]
EXPOSE 3000