docker build -t joelwembo/prodxcloud:latest .
docker run -p 80:80 --name react joelwembo/prodxcloud:latest

# For SSL Certificate in your react application use following Script
# docker-compose -f ./deployments/traefik/docker-compose-ssl.yml up -d
# DOCKER_SCAN_SUGGEST=false docker build -t prodxcloud:latest .
# docker-compose -f ./docker-compose-ssl.yml up -d


# Run Ansible ec2 instance
ANSIBLE_LOCALHOST_WARNING=False \
ANSIBLE_INVENTORY_UNPARSED_WARNING=False \
ansible-playbook ansible-playbook-ec2.yml --tags create_ec2

