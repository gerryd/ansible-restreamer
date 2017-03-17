#!/bin/sh

. /opt/ffmpeg-config.sh

ffmpeg -i "${SOURCE}" \
    -c copy -c:a aac -b:a 128k -ar 48000 -f flv "${DESTINATION}"
