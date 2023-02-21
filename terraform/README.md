## Initial Deployment Infrastructure Terraform + Ansible
1. Files from directories `ansible` and `terraform` must be collected in one directory (for ease of use).
2. In the combined directory, you need to place the `.cred` folder with the public and private keys.
3. Before running `Terraform` must be added to environment variables `AWS_ACCESS_KEY_ID` & `AWS_SECRET_ACCESS_KEY`.
```
~/ans-tf$ terraform init  
~/ans-tf$ terraform apply  
~/ans-tf$ ansible-playbook -i ec2.py playbook.yml  
```
## Delete Infrastructure
```
~/ans-tf$ terraform destroy  
```