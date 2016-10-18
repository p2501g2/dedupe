FROM python:2.7
COPY . /dsrc
WORKDIR /dsrc

RUN pip install "numpy>=1.9"
RUN pip install -r requirements.txt
RUN cython src/*.pyx
RUN pip install -e .
