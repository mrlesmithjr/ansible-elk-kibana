#FROM mrlesmithjr/ansible:ubuntu-12.04
#FROM mrlesmithjr/ansible:ubuntu-14.04
FROM mrlesmithjr/ubuntu-ansible

MAINTAINER mrlesmithjr@gmail.com

#Installs git
RUN apt-get update && apt-get install -y git && \
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#Create Ansible Folder
RUN mkdir -p /opt/ansible-playbooks/roles

#Clone GitHub Repo
RUN git clone https://github.com/mrlesmithjr/ansible-elk-kibana.git /opt/ansible-playbooks/roles/ansible-elk-kibana && \
  cd /opt/ansible-playbooks/roles/ansible-elk-kibana && \
  git checkout 4.3.1

#Copy Ansible playbooks
COPY playbook.yml /opt/ansible-playbooks/

#Run Ansible playbook to install ELK-Kibana
RUN ansible-playbook -i "localhost," -c local /opt/ansible-playbooks/playbook.yml

#Clean up APT
RUN apt-get clean

#Expose Ports
EXPOSE 5601

CMD ["/opt/kibana.sh"]
