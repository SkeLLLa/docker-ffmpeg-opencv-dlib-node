ARG NODE_VERSION
FROM mhart/alpine-node:${NODE_VERSION} as nodebase

FROM m03geek/ffmpeg-opencv-dlib:alpine
ENV OPENCV4NODEJS_DISABLE_AUTOBUILD=1

COPY --from=nodebase /usr/bin/node /usr/bin/
COPY --from=nodebase /usr/lib/node_modules /usr/lib/node_modules
COPY --from=nodebase /usr/include/* /usr/include/

RUN ln -s /usr/lib/node_modules/npm/bin/npm-cli.js /usr/bin/npm \
  && ln -s /usr/lib/node_modules/npm/bin/npx-cli.js /usr/bin/npx \
  && rm /usr/lib/node_modules/npm/*.md
