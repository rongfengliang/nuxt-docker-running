FROM node:alpine
WORKDIR /app
COPY .  /app
RUN yarn global add  pm2
LABEL NORE="just for test"
ENV NODE_ENV=production
ENV HOST 0.0.0.0
LABEL AUTHOR="1141591465@qq.com"
EXPOSE 3000
RUN yarn && yarn  build
CMD [ "pm2-runtime", "start", "ecosystem.config.js" ]
