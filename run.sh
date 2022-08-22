#!/usr/bin/env bash

cd test-app

python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install pylint
pip install \
    --editable ../shared-lib \
    --editable .

# The following is working and print "World"
python test_app/__init__.py

# The following is raising an pylint import-error
pylint --jobs=4 --output-format=colorized --recursive=true test_app
