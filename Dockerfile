FROM quay.io/jupyter/datascience-notebook:2024-10-07

COPY ./Pytorch_MNIST.ipynb ./dockerized_MNIST.ipynb
RUN pip install numpy matplotlib torch torchvision
