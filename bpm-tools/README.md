# [bpm-tools](https://github.com/ericrobolson/bpm-tools) 
A CLI tool used for analyzing the bpm of a track.

# Usage
- build using `docker build -t bpm-tools .`
- only tested using MP3 files
- run using `docker run -v %ABSOLUTE_PATH_FOR_DATA%:/data --env="AUDIO_FILE=%MP3NAME.mp3%" bpm-tools`
- - Concrete example: `docker run -v C:\Users\ericr\dev\dockerfiles\bpm-tools\test:/data --env="AUDIO_FILE=audio_example.mp3" bpm-tools`
- - Need to use absolute path for volume to mount
- - Need to set `AUDIO_FILE=%the_name_of_the_file_in_the_directory.mp3%` env var
- - Ideally is a flat directory in that the audio files are hosted at the root level of the folder