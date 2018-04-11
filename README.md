# docker-ffmpeg-opencv-dlib

Docker image with compiled OpenCV, Dlib, ffmpeg and Node.js.

[![](https://images.microbadger.com/badges/version/m03geek/ffmpeg-opencv-dlib-node:alpine.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:alpine "version")[![](https://images.microbadger.com/badges/image/m03geek/ffmpeg-opencv-dlib-node:alpine.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:alpine "layers")

[![](https://images.microbadger.com/badges/version/m03geek/ffmpeg-opencv-dlib-node:stretch.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:stretch "version")[![](https://images.microbadger.com/badges/image/m03geek/ffmpeg-opencv-dlib-node:stretch.svg)](https://microbadger.com/images/m03geek/ffmpeg-opencv-dlib-node:stretch "layers")

Based on [ffmpeg-opencv-dlib image](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib/)

# Node.js lib compatibility

* [opencv4nodejs](https://www.npmjs.com/package/opencv4nodejs) - native module, see installing instructions above and follow module documentation.
* [face-recognition](https://www.npmjs.com/package/face-recognition) - native module, see installing instructions above and follow module documentation.

# Other images:

## Without FFmpeg

| OpenCV | OpenCV+Dlib | OpenCV+Dlib+Node.js |
|-|-|-|
| [Docker](https://hub.docker.com/r/m03geek/opencv/) | [Docker](https://hub.docker.com/r/m03geek/opencv-dlib/) | [Docker](https://hub.docker.com/r/m03geek/opencv-dlib-node/) |
| [Github](https://github.com/SkeLLLa/docker-opencv) | [Github](https://github.com/SkeLLLa/docker-opencv-dlib) | [Github](https://github.com/SkeLLLa/docker-opencv-dlib-node) |

## With FFmpeg

| OpenCV | OpenCV+Dlib | OpenCV+Dlib+Node.js |
|-|-|-|
| [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv/) | [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib/) | [Docker](https://hub.docker.com/r/m03geek/ffmpeg-opencv-dlib-node/) |
| [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv) | [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv-dlib) | [Github](https://github.com/SkeLLLa/docker-ffmpeg-opencv-dlib-node) |