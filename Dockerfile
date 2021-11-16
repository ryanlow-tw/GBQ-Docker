FROM jupyter/minimal-notebook

WORKDIR /app

USER root

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

USER $NB_UID