FROM quay.io/jupyter/datascience-notebook:2024-10-07

COPY ./Pytorch_MNIST.ipynb ./dockerized_MNIST.ipynb
COPY ./test.py .
COPY ./requirements.txt .
COPY ./.pre-commit-config.yaml .

RUN --mount=type=cache,target=/root/.cache/pip \
        pip install -r requirements.txt
RUN black --line-length 120 .
RUN git init .
RUN pre-commit install
RUN pre-commit run --all-files
