# FROM node:16.13.1-alpine

# ENV TZ=Asia/Shanghai
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# ENV NODE_ENV=production

# WORKDIR /app
# COPY . .
# # RUN npm i
# RUN yarn install && yarn cache clean
# RUN cd /app
# RUN yarn build


# CMD ["node", "build/bootstrap"]


FROM node:16.13.1-alpine

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV NODE_ENV=production

WORKDIR /app
COPY . .
# RUN npm i
RUN yarn install && yarn cache clean
# RUN cd /app
# RUN yarn build


CMD ["node", "build/bootstrap"]
