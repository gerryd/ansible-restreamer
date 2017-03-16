#!/bin/sh

. /opt/ffmpeg-config.sh

ffmpeg -i "${SOURCE}" \
    -c copy -c:a aac -f flv "${DESTINATION}"
