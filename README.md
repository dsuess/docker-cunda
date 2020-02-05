Docker-CUDA-Conda
=================

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/dseuss/cunda?style=flat-square)](https://hub.docker.com/r/dseuss/cunda)
[![Docker Pulls](https://img.shields.io/docker/pulls/dseuss/cunda)](https://hub.docker.com/r/dseuss/cunda)

Based on `nvidia/cuda` base image with conda preinstalled and `cudatoolkit` pre-cached in conda.
Currently supported versions are:

| CUDA Tag                      |
| ----------------------------- |
| 10.1-runtime                  |
| 10.1-cudnn7-devel-ubuntu18.04  |

If you need more, just submit a PR editing the [`cuda_tags.txt`](https://github.com/dsuess/docker-cunda/blob/master/cuda_tags.txt) file.
