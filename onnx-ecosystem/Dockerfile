FROM openkbs/jdk-mvn-py3

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

ARG DEBIAN_FRONTEND=noninteractive
RUN sudo apt-get update && \
	sudo apt-get install -y build-essential\
	libcurl4-openssl-dev \
	libssl-dev \
	git && \
	pip3 install --upgrade pip

WORKDIR ${HOME}
USER ${USER}

RUN mkdir scripts && \
		cd scripts && \
		mkdir converter_scripts && \
		mkdir inference_demos
COPY converter_scripts/ scripts/converter_scripts/
COPY inference_demos/ scripts/inference_demos/
COPY requirements.txt requirements.txt

# Install Python Requirements
RUN pip3 install -r requirements.txt

WORKDIR scripts

EXPOSE 8888

# Launch Jupyter notebook
CMD ["jupyter", "notebook", "--allow-root", "--port=8888", "--ip=0.0.0.0", "--no-browser"]
