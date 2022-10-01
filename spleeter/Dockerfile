# syntax=docker/dockerfile:experimental
FROM continuumio/miniconda3
RUN conda install -c conda-forge ffmpeg libsndfile
RUN pip install spleeter
COPY ./run.sh /
ENTRYPOINT [ "/run.sh" ]
