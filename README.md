Flask w/Docker Quickstart
===========================

This version of our project has a multiple containers. One container will run nginx and the other container will run the application. With this setup we can scale our application by spinning up more webapp containers and linking them in our nginx configuration.

To update from the nginx/uWSGI + Flask container:

1. Create directories for our new containers called 'nginx' and 'web-app'. The nginx container will have it's own Dockerfile and the nginx.conf 
file while the flask container will have a Dockerfile, the application code, requirements, and the uwsgi.ini file. Both the new Dockerfiles will be invoked by a new file called `docker-compose.yml`.
2. Copy the `docker-compose.yml` file to the project directory. This file names the containers, instructs Docker which Dockerfiles to run, links the containers, and says what command to run on startup.
3. We can build our new containers using `docker-compose build` from the project root. This will call our `docker-compose.yml` file.
