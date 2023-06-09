FROM jupyter/datascience-notebook:latest

RUN pip install --upgrade pip
RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab

WORKDIR $HOME
RUN mkdir code

EXPOSE 8888
VOLUME ["/home/jovyan/code"]

CMD ['/bin/bash']
