yum install ansible python-boto -y
export AWS_SECRET_ACCESS_KEY=0QLsNL6floEeOLSlOinswxNa9izZYNLlO/SUJzqo
export AWS_ACCESS_KEY_ID=AKIAJ4I5OBRWQP35K7ZQ
export ANSIBLE_HOSTS=~/ansible/ec2.py
export EC2_INI_PATH=~/ansible/ec2.ini
ssh-agent bash
ssh-add ~/ansible/msrKey.pem
