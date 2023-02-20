## Initial Deployment Infrastructure Terraform + Ansible
### Files from directories 'ansible' and 'terraform' must be collected in one directory (for ease of use)
'''
~/ans-tf$ terraform init
~/ans-tf$ terraform apply
~/ans-tf$ ansible-playbook -i ec2.py playbook.yml
'''
## Delete Infrastructure
'''
~/ans-tf$ terraform destroy
'''