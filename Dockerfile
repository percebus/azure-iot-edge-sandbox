FROM node:18 as base
WORKDIR /project
COPY . .
RUN ls -la
RUN npm run setup:ci --if-present
RUN npm ci
RUN ls -la ./tmp
RUN npm run iotedge:tools:CACertificates:update
RUN ls -la ./tmp/CACertificates

FROM base as certs
RUN ./tmp/CACertificates/certGen.sh create_root_and_intermediate
RUN ls -la ./tmp/CACertificates
