#!/bin/bash
cd data

if [ -z "$NOTATION" ]; then
    NOTATION=standard
fi

cd /data
keyfinder-cli -n "$NOTATION" "$AUDIO_FILE"
