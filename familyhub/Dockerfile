ARG BUILD_FROM
FROM $BUILD_FROM
RUN apk add --no-cache nodejs npm python3 make g++
WORKDIR /app
COPY server/package.json ./
RUN npm install --production
COPY server/ ./
COPY client/build ./client/build
RUN mkdir -p /data
EXPOSE 3000
CMD ["node", "index.js"]
