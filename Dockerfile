FROM alpine
RUN apk add --no-cache bash g++ git make nodejs python 
ADD . /cryptoprof
WORKDIR /cryptoprof
RUN npm install
ENTRYPOINT ["/usr/bin/node", "index.js"]
