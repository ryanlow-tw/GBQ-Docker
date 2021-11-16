FROM jupyter/minimal-notebook

WORKDIR /app

USER root

EXPOSE 8888

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

USER $NB_UID