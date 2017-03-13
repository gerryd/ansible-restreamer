#!/bin/sh

. /opt/ffmpeg-config.sh

ffmpeg -i "${SOURCE}" \
    -c copy -flags +global_header -f segment -segment_time ${RECORDING_SEGMENT_LENGTH} \
    	-segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc "${RECORDING_DIRECTORY}out%d.mp4" \
    -c copy -f mpegts "${DESTINATION}&overrun_nonfatal=1&buffer_size=81921024&fifo_size=178481&pkt_size=1000"
