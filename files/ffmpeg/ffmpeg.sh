#!/bin/sh

. /opt/ffmpeg-config.sh

ffmpeg -i "${SOURCE}" \
    -c copy -flags +global_header -f segment -segment_time ${RECORDING_SEGMENT_LENGTH} \
    	-segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc "${RECORDING_DIRECTORY}out%d.mp4" \
    -c copy -c:a aac -f flv "${DESTINATION}"
