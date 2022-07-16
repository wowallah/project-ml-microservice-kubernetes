[![CircleCI](https://dl.circleci.com/status-badge/img/gh/wowallah/project-ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/wowallah/project-ml-microservice-kubernetes/tree/main)

## Project Overview

In this project, I applied the skills you have acquired from the Udacity Cloud DevOps course to operationalize a Machine Learning Microservice API. 

This project operationalizes a Python flask app in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls, given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project Tasks

The goal of the project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), an open-source system for automating the management of containerized applications. In the project we:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for the application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally - https://docs.docker.com/get-docker/

* Setup and Configure Kubernetes locally - https://minikube.sigs.k8s.io/docs/start/
* Create Flask app in Container `./run_docker.sh`
* Run via kubectl `./run_kubernetes.sh`

### Make Prediction
* Run the prediction script - `./make_prediction.sh`
