FROM node:16


# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

RUN npm install

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt update && apt install -y --fix-broken xvfb ./google-chrome-stable_current_amd64.deb



CMD ["npm", "run", "server-start"]