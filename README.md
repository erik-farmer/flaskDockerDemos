Flask w/Docker Quickstart
===========================

This version of our project is containerized using Docker and run using uWSGI. uWSGI is much better at serving our application compared to the development server but can be improved later (you haven't seen my final form).

To update from the basic app:

1. Go through the [Docker installation instructions][1] for your specific platform.

2. Run `pip install uwsgi` followed by `pip freeze > requirements.txt`. This installs uWSGI in your local python environment as well as add it to your requirements file that Docker will handle for us.

3. Create your Docker file like the one in this branch. To summarize what it does the Docker file is a set of instructions that builds a Ubuntu container with python 2.7.10, copies our application code and requirements, installs our requirements, and then runs the command to serve our application.

4. Build your Docker image using the `docker build -t uwsgi-demo .` command. This builds a Docker image using a Docker file in the local directory and tags the image as 'uwsgi-demo'. Tagging an image makes it easier to identify/run.

5. After your image build it can be ran using `docker run -P uwsgi-demo`. Citing the Docker Docs:

    > The -P flag is new and tells Docker to map any required network ports inside our container to our host. This lets us view our web application.

6. To view our Dockerized application run `docker ps` to see the list of running containers which should present you with something simlar to:

    |CONTAINER ID|IMAGE|COMMAND|CREATED|STATUS|PORTS|NAMES|
    |------------|:---:|:-----:|:-----:|:----:|:---:|----:|
    |cd97d98f351b|uwsgi-demo|"/bin/sh -c 'uwsgi --"|10 seconds ago|Up 9 seconds|0.0.0.0:32768->8080/tcp|agitated_chandrasekhar
    
    Alternatively you can specify the port binds using `-p <local_port>:<container_port>`

7. Point your browser to the Docker VM ip with the port that forwards to 8080 (our app) and you should see your app!




[1]: https://docs.docker.com/installation/