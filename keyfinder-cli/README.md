# keyfinder-cli
A simple docker image that builds [keyfinder-cli](https://github.com/evanpurkhiser/keyfinder-cli).

## Todo List
- Make it read off the host file system
- Make it output Camelot information

# Usage
- build using `docker build -t keyfinder-cli .`
- only tested using MP3 files
- Notation can be set with the `NOTATION` env var
- - `standard` returns the key in standard notation (Am, C, etc.). Default value when left out.
- - `camelot` returns the key in Camelot notation. 
- - `openkey` returns the key in Open Key notation. 
- run using `docker run -v %ABSOLUTE_PATH_FOR_DATA%:/data --env="AUDIO_FILE=%MP3NAME.mp3%" keyfinder-cli`
- - Concrete example: `docker run -v C:\Users\ericr\dev\dockerfiles\keyfinder-cli\test:/data --env="AUDIO_FILE=audio_example.mp3" keyfinder-cli`
- - Concrete example: `docker run -v C:\Users\ericr\dev\dockerfiles\keyfinder-cli\test:/data --env="AUDIO_FILE=audio_example.mp3" --env="NOTATION=camelot" keyfinder-cli`
- - Need to use absolute path for volume to mount
- - Need to set `AUDIO_FILE=%the_name_of_the_file_in_the_directory.mp3%` env var
- - Ideally is a flat directory in that the audio files are hosted at the root level of the folder
