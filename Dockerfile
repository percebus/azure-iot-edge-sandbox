FROM node:18 as base
WORKDIR /project
COPY . .
RUN ls -la
RUN npm run setup:ci --if-present
RUN npm ci
RUN npm run CACertificates:update
RUN ls -la ./CACertificates

FROM base as certs
RUN ./CACertificates/certGen.sh create_root_and_intermediate
RUN ls -la ./CACertificates

FROM base as node
RUN node
