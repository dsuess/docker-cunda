ARG CUDA_BUILD_TAG=UNDEFINED
FROM nvidia/cuda:${CUDA_BUILD_TAG}

ARG CUDA_BUILD_TAG=UNDEFINED
RUN echo "****** Building ${CUDA_BUILD_TAG} / ${CUDA_VERSION} ******"

LABEL maintainer "Daniel Suess <daniel@dsuess.me>"

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget \
    && wget -q https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /conda.sh \
    && chmod +x /conda.sh \
    && /conda.sh -b -p /opt/conda \
    && rm /conda.sh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV PATH=/opt/conda/bin:$PATH

RUN conda install --download-only cudatoolkit="${CUDA_VERSION}" \
    && conda clean --all
