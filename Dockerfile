FROM tensorflow/tensorflow:2.17.0-gpu


RUN apt-get update && apt-get install -y git libvips openjdk-17-jdk build-essential

ENV JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64/

RUN pip install imagecodecs
RUN pip install jupyterlab
RUN pip install pyvips
RUN pip install tifffile

RUN pip install git+https://github.com/vdsukhov/image_processing_py.git

RUN pip install git+https://github.com/CellProfiler/python-javabridge
RUN pip install python-bioformats
