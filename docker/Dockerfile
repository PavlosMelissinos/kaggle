FROM jupyter/datascience-notebook:latest

RUN pip install tqdm sklearn lightgbm xgboost catboost

EXPOSE 8888

RUN jupyter labextension install @jupyterlab/google-drive

#CMD jupyter lab --allow-root --ip=0.0.0.0 --no-browser

# Usage:
# Build the image:
# docker build . -t earthquake

# Run the container:
# docker run -it --rm -p 8888:8888 jupyter/datascience-notebook start.sh jupyter lab
