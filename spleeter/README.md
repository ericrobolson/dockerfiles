# [Spleeter](https://github.com/deezer/spleeter) 
A CLI tool used for splitting audio files into separate tracks.

# Usage
- build using `docker build -t spleeter .`
- run using `docker run -it -v %ABSOLUTE_PATH_FOR_DATA%:/data --env="AUDIO_FILE=%MP3NAME.mp3%" spleeter`
- - Concrete example: `docker run -it -v C:\Users\ericr\dev\dockerfiles\spleeter\test:/data --env="AUDIO_FILE=audio_example.mp3" spleeter`
- - Need to use absolute path for volume to mount
- - Need to set `AUDIO_FILE=%the_name_of_the_file_in_the_directory.mp3%` env var
- - Ideally is a flat directory in that the audio files are hosted at the root level of the folder