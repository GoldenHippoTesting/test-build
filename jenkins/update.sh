#!/bin/bash

virtualenv .venv
source .venv/bin/activate
pip install jenkins-job-builder
for i in jenkins/*yml; do jenkins-jobs update $i; done
