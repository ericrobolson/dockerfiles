#!/bin/bash
cd data
sox "$AUDIO_FILE" -t raw -r 44100 -e float -c 1 - | bpm
