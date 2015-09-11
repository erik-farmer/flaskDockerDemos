Flask w/Docker Quickstart
===========================

This version of our project is containerized using Docker + nginx and ran using uWSGI.

To update from the basic container:

add ansible file
1. Copy the `docker-container.yml` into your project. Our use case for Ansible here is to have a file that is in charge of bootstrapping our servers with required/needed packages. Since most of our apps are flask apps this file is pretty easy to
circulate amongst developers in a VCS. Additional requirements can be added in a tailored Ansible playbook or added to our `Dockerfile`.
modify docker file to provision server with playbook
2. Modify the `Dockerfile` to use the Ansible/ubuntu image, run the playbook, include the lines to add our nginx configuration, and finally modify the command to restart nginx and run our nginx + uwsgi app.
3. Follow the same steps of building a new image, running it with the proper port mapping, and seeing it live locally :)