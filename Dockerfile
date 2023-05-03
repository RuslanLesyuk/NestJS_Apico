FROM node:latest
 
 WORKDIR /app
 
 COPY ./ /app
 
 EXPOSE 3000

 RUN npm install
  
 ENTRYPOINT ["npm","run"]
 
 CMD ["start:dev"]
