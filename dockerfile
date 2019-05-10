FROM node:10-alpine
# Make a app directory
RUN mkdir -p /app/vue/
# Set as work directory for all the upcomming cmds
WORKDIR /app/vue/
# Copy package.json for efficient build
COPY package.json /app/vue/
# install the dependency if there is any change in pacckage.json otherwise use docker cache
RUN npm install
# Copy source code
COPY . /app/vue/
# Expose 8080 port, so that host can use it
EXPOSE 8080

CMD ["npm run dev"]
