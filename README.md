# Recommended file Layout to Terraform Projects


- stage
 - vpc
  - services
   - frontend-app
    - backend-app
     - var.tf
     - outputs.tf
     - main-tf
  - data-storage
   - my-sql
   - redis
- dev
    - same structure
- prod
    - same structure
- mgmt
 - vpc
 - services
  - bastion-host
  - jenkins
- glogal
 - iam
 - s3