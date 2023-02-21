## Initial Deployment Infrastructure Terraform + Ansible
#### Files from directories 'ansible' and 'terraform' must be collected in one directory (for ease of use).
#### In the combined directory, you need to place the '.cred' folder with the public and private keys.
#### Before running **terraform** must be added to environment variables AWS_ACCESS_KEY_ID & AWS_SECRET_ACCESS_KEY.
```
~/ans-tf$ terraform init  
~/ans-tf$ terraform apply  
~/ans-tf$ ansible-playbook -i ec2.py playbook.yml  
```
## Delete Infrastructure
```
~/ans-tf$ terraform destroy  
```