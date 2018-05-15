# docker-ffmpeg-opencv-dlib-node

Docker image with compiled OpenCV, Dlib, ffmpeg and Node.js.

[![](https://images.microbadger.com/badges/version/m03geek/ffmpeg-opencv-dlib-node:alpine.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:alpine "version")[![](https://images.microbadger.com/badges/image/m03geek/ffmpeg-opencv-dlib-node:alpine.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:alpine "layers")

[![](https://images.microbadger.com/badges/version/m03geek/ffmpeg-opencv-dlib-node:stretch.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:stretch "version")[![](https://images.microbadger.com/badges/image/m03geek/ffmpeg-opencv-dlib-node:stretch.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:stretch "layers")

Based on [ffmpeg-opencv-dlib image](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib/)

# Versions (latest)

* node - 10.1.0
* dlib - 19.8
* opencv - 3.4.1

# Node.js lib compatibility

* [opencv4nodejs](https://www.npmjs.com/package/opencv4nodejs) - native module, see installing instructions above and follow module documentation.
* [face-recognition](https://www.npmjs.com/package/face-recognition) - native module, see installing instructions above and follow module documentation.

## Installing opencv4nodejs

```Dockerfile
FROM m03geek/ffmpeg-opencv-dlib-node:alpine
RUN apk update && apk add -u --no-cache python make g++
RUN npm i opencv4nodejs
```

## Installing face-recognition

```Dockerfile
FROM m03geek/ffmpeg-opencv-dlib-node:alpine
RUN apk update && apk add -u python make g++ libpng-dev libjpeg-turbo-dev giflib-dev libx11-dev
RUN npm init -y
RUN npm i face-recognition
```

# Other images:

## Without FFmpeg

| OpenCV | Dlib | OpenCV+Dlib | OpenCV+Dlib+Node.js | OpenCV+Node.js | Dlib+Node.js |
|-|-|-|-|-|-|
| [Docker](https://hub.docker.com/r/m03geek/opencv/) | [Docker](https://hub.docker.com/r/m03geek/dlib/) | [Docker](https://hub.docker.com/r/m03geek/opencv-dlib/) | [Docker](https://hub.docker.com/r/m03geek/opencv-dlib-node/) | [Docker](https://hub.docker.com/r/m03geek/opencv-node/) | [Docker](https://hub.docker.com/r/m03geek/dlib-node/) |
| [Github](https://github.com/SkeLLLa/docker-opencv) | [Github](https://github.com/SkeLLLa/docker-dlib) | [Github](https://github.com/SkeLLLa/docker-opencv-dlib) | [Github](https://github.com/SkeLLLa/docker-opencv-dlib-node) | [Github](https://github.com/SkeLLLa/docker-opencv-node) | [Github](https://github.com/SkeLLLa/docker-dlib-node) |

## With FFmpeg

| OpenCV | OpenCV+Dlib | OpenCV+Dlib+Node.js | OpenCV+Node.js |
|-|-|-|-|
| [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv/) | [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib/) | [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib-node/) | [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib-node/) |
| [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv) | [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv) | [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv-dlib-node) | [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv-node) |