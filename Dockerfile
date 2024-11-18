FROM quay.io/jupyter/datascience-notebook:2024-10-07

COPY ./Pytorch_MNIST.ipynb ./dockerized_MNIST.ipynb
COPY ./requirements.txt .

RUN --mount=type=cache,target=/root/.cache/pip \
        pip install -r requirements.txt
RUN black --line-length 120 .
