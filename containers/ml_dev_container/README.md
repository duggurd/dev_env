# Machine Learning dev container
Python 3.9 based development container for machine learning workloads.

Superfast "virtual environment" setup by using the pre-created image with packages pre-installed.

## Running container

### docker run
Easily open in docker directly, with either `docker run -ti .` for direct access or `docker run -tid .` in detached mode. Add `-v .:/workdir` to add d\direct file access to current open folder.

### docker compose
Easily setup container using `docker compose up -d`, then use `docker attach [container name or id]` when needed. The compose file automatically links the current folder to the container for easy two-way manioulation of files.

### vscode dev-container
Run as dev-container is vscode. Install the dev-container extension, copy `Dockerfile` or `docker-compose.yaml` to the directory you want to open the container in, open the extension and create a dev-container.

## Pre-installed packages
- tensorflow
- pandas
- numpy
- torch
- sqlalchemy
- scikit-learn
- matplotlib
- scipy


Build command:
`docker build -t ml_python_dev:[tag] --cache-from ml_python_dev:[tag] .`