# Google BigQuery Lab Dockerized

Tested on:
* Docker 20.10.8
* Python 3.9.6

## Docker

### Build Docker Image

* Before building the docker image, please make sure that your credentials GBQ credentials are in the following path, where xxxxxxx is your json filename

* Make an `auth` folder in the same folder as this.

```bash
auth/xxxxxxx.json
``` 

* Please refer to the Jupyter Notebook for reference

```bash
docker build -t notebook .
```

### Run Docker Container
```bash
docker run -p 8888:8888 notebook 
```
* Once you've started the jupyter notebook you would see something like this:

```bash
[I 11:38:19.618 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 11:38:19.621 NotebookApp] 
    
    To access the notebook, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/nbserver-7-open.html
    Or copy and paste one of these URLs:
        http://d3dc585bdbf8:8888/?token=373bc8a20750dc566bf2cbf885d1c590f7a998ea025e1ef2
     or http://127.0.0.1:8888/?token=373bc8a20750dc566bf2cbf885d1c590f7a998ea025e1ef2
[I 11:38:21.331 NotebookApp] 302 GET /?token=373bc8a20750dc566bf2cbf885d1c590f7a998ea025e1ef2 (172.17.0.1) 0.690000ms
```
* Please copy and paste the 2nd last line that begins with http://127.0.0.1:8888 the following query strings are the authentication token

* Take note that the container uses port 8888 so it wouldn't work other applications are using the same port

## No docker

### Creation of virtual environment

```bash
python -m venv venv
```

### Activate virtual environment on local environment (mac/linux)

```bash
source venv/bin/activate
```

### Install packages on local environment

```bash
pip install -r jupyter-requirements.txt
```
