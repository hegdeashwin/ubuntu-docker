FROM buildpack-deps:jessie

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Your app binds to port 8080 so you'll use the EXPOSE instruction
# to have it mapped by the docker daemon
EXPOSE 9000

CMD [ "npm", "start" ]
