# Terraform Jenkins

This setup provides a basic example for how to use Terraform on an EC2 node via Jenkins.
It grabs a terraform configuration from this project and implements it on the specified AWS account.

### Prerequisites: 
- A working Jenkins Server
- A permanent Jenkins Node on an EC2 instance
- A S3 Bucket and a DynamoDB for statelocking

### AWS Policy: 
The EC2 Node needs a Role with the policies described in the policy.json file.

### Variables:
The following values might need to be adjusted, depending on the usage: 
- All values in variables.tf
- The names of the bucket and database in policy.json
- The name of the agent in the Jenkinsfile
- The policy permissions, should the node be able to create more than ec2 instances

For this project, this Repository used a webhook to automatically contact the Jenkins server whenever a push occured, automating the process of building terraform infrastructure with every code change.
