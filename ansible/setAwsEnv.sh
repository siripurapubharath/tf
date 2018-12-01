sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z"
#yum install ansible python-boto -y
export AWS_SECRET_ACCESS_KEY=''
export AWS_ACCESS_KEY_ID=''
export ANSIBLE_HOSTS=$PWD/ec2.py
export EC2_INI_PATH=$PWD/ec2.ini
ssh-agent bash
ssh-add ~/ansible/msrKey.pem
