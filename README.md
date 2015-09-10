Flask Dev Server Quickstart
===========================

This version of our project uses a lightweight server intended for development only.

It can be created via the following:

1. Create a new project directory and enter it

        mkdir <appname> && cd <appname>

2. Create a virtual environment using virtualenv or pyenv-virtualenv

        virtualenv <virtual_env_name>

        source <virtual_env_name>/bin/activate

        pip install --upgrade pip

        pip install flask

        touch application.py


The application code starts the flask app using the Werkzeug server and can be run using:

```python
python application.py
```