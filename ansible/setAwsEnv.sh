yum install ansible python-boto -y
export AWS_SECRET_ACCESS_KEY=''
export AWS_ACCESS_KEY_ID=''
export ANSIBLE_HOSTS=~/ansible/ec2.py
export EC2_INI_PATH=~/ansible/ec2.ini
ssh-agent bash
ssh-add ~/ansible/msrKey.pem
