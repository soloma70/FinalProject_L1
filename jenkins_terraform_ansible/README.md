## Initial Deployment Infrastructure on the base Terraform + Ansible + Jenkins (pipeline)  
1. The job is done on the slave node, on which should be installed: `Ansible`, `Terraform` and `AWS CLI`.  
2. `Jenkins` must be installed on the master node with the necessary plugins: `Ansible plugin`, `Terraform Plugin`
3. In the directory, you need to place the `.cred` folder with the public key (based on it, access to the EC2 Instance is created) and file `aws` (full access to AWS resources) in format (replace X with your data):  
```
[default]
aws_access_key_id = XXXXXXXXXXXXXXXXXXX
aws_secret_access_key = XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```
4. The project is cloned from the repo GitHub.  
5. The pipeline parametrize. You choose to raise infrastructure or destroy it.  
