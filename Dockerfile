FROM ansible/ubuntu14.04-ansible:stable

WORKDIR /root
ADD application.py application.py
ADD requirements.txt requirements.txt

ADD docker-container.yml /srv/ansible/docker-container.yml
WORKDIR /srv/ansible
RUN ansible-playbook docker-container.yml -c local

RUN rm /etc/nginx/sites-enabled/default
ADD nginx.conf /etc/nginx/conf.d/

WORKDIR /root
ADD sample-uwsgi.ini sample-uwsgi.ini
EXPOSE 80

CMD\
    /etc/init.d/nginx restart && \
    ls -l && \
    uwsgi --ini sample-uwsgi.ini