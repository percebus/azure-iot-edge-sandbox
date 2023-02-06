FROM node:18 as base
WORKDIR /project
COPY . .
RUN ls -la
RUN npm run setup:ci --if-present
RUN npm ci

FROM base as certs
RUN npm run iotedge:tools:CACertificates:update
# RUN ./tmp/CACertificates/certGen.sh create_root_and_intermediate
