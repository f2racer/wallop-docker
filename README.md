# Wallop

A Docker image with [Wallop](https://github.com/maddox/wallop) and
[FFmpeg](https://ffmpeg.org).

## Differences

FFmpeg is available in Stretch, so there is no need to compile it. So unlike the [original](https://github.com/ipstatic/wallop-docker) this uses [Ruby](https://hub.docker.com/_/ruby/).

## Usage

`docker run --rm --name wallop -v $(pwd)/config.toml:/wallop/config/config.toml -p 8888:8888 ipstatic/wallop:latest`

You will want to use a full path for your config.toml file. Ensure the [ffmpeg]
section has the acodec key set to "aac",  the ffmpeg_path key is set to
"/usr/bin/ffmpeg" and the transcoding_path key is set to "/tmp".
