FROM m03geek/ffmpeg-opencv-dlib:alpine

ARG RUNTIME_DEPS='openssl zlib'
ARG BUILD_DEPS='wget make gcc g++ python linux-headers binutils-gold libstdc++ openssl-dev zlib-dev'
ARG NODE_VERSION

ENV NODE_VERSION=${NODE_VERSION} \
    OPENCV4NODEJS_DISABLE_AUTOBUILD=1

RUN echo "Node.js: ${NODE_VERSION}" \
    && apk add -u --no-cache --virtual .build-dependencies $BUILD_DEPS \
    && wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.xz -O node.tar.xz \
    && mkdir /node \
    && tar -xJf node.tar.xz --strip 1 -C /node \
    && cd /node \
    && ./configure --prefix=/usr ${CONFIG_FLAGS} \
    && make -j$(getconf _NPROCESSORS_ONLN) \
    && make install \
    && cd / \
    && rm node.tar.xz \
    && rm -rf /node \
    && npm install -g npm@$latest \
    && find /usr/lib/node_modules/npm -name test -o -name .bin -type d | xargs rm -rf \
    && apk del .build-dependencies \
    && apk add -u --no-cache $RUNTIME_DEPS \
    && rm -rf /var/cache/apk/* /usr/share/man /usr/local/share/man /tmp/*
