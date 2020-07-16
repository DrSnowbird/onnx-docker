# ONNX (onnx-ecosystem) Container with Python Jupyter Notebooks
This is forked from official ONNX Git with extension!

(
# Run
```
git clone https://github.com/DrSnowbird/onnx-docker.git
cd onnx-docker/onnx-ecosystem
./run.sh
```
This assumes you have installed both [Docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/). If not, just click the either link to follow to install)

# Build (locally) Container Images
```
git clone https://github.com/DrSnowbird/onnx-docker.git
cd onnx-docker/onnx-ecosystem
make build
```

# Use (with Jupyter Notebooks)
You need get "Token" to be able to login the web-based Jupyter Notebooks.
```
cd onnx-docker/onnx-ecosystem
./get-tokens.sh
(you see output as)
>>> TOKEN=5d2c25d777f8dfd698d33edc2b25f4623306e3a6d401bf26
```
Or, use '.log.sh' to see the very end to have TOKEN information there.
```
./log.sh
>>> (scroll to the end of display)

[C 13:46:12.586 NotebookApp] 
    To access the notebook, open this file in a browser:
        file:///home/developer/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://426aeadb6d2c:8888/?token=5d2c25d777f8dfd698d33edc2b25f4623306e3a6d401bf26
     or http://127.0.0.1:8888/?token=5d2c25d777f8dfd698d33edc2b25f4623306e3a6d401bf26
```
You just need cut-and-paste the above disply of "token=<TOKEN-to-be-copied>" and then 
open browser 
```http://127.0.0.1:8888
then paste the TOKEN into the prompt
```
Or, simply (right) click-and-open the above
```
http://127.0.0.1:8888/?token=5d2c25d777f8dfd698d33edc2b25f4623306e3a6d401bf26
```

# ====== Inherited from Official ONNX GIT ======

# What is this repository for?

To store the docker BUILD scripts of ONNX related docker images.
- [onnx-base](onnx-base): Use published ONNX package from PyPi with minimal dependencies.
- [onnx-dev](onnx-dev): Build ONNX from source with minimal dependencies.
- [onnx-ecosystem](onnx-ecosystem): Jupyter notebook environment for getting started quickly with ONNX models, ONNX converters, and inference using ONNX Runtime.

## Docker Image Workflow

1. Obtain the Docker images

  You can clone this repository and build your desired image.
  ```
  # onnx-base container
  cd onnx-base
  docker build . -t onnx-base

  # onnx-developer container
  cd onnx-dev
  docker build . -t onnx-dev

  # onnx-ecosystem container
  cd onnx-ecosystem
  docker build . -t onnx-ecosystem
  ```

  Alternatively, you can pull a pre-built image from [DockerHub](https://hub.docker.com/u/onnx).
  ```
  docker pull onnx/onnx-base
  docker pull onnx/onnx-dev
  docker pull onnx/onnx-ecosystem
  ```

2. Run the images

```
docker images

docker run -it onnx-base
docker run -it onnx-dev
docker run -p 8888:8888 onnx-ecosystem
```
