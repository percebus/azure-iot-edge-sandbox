FROM node:18 as base
WORKDIR /project
COPY . .
RUN npm run setup:ci --if-present && npm ci

FROM base as certs
RUN ./tmp/CACertificates/certGen.sh create_root_and_intermediate
