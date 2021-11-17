#!/bin/bash
export TF_VAR_IAM_TOKEN=`yc iam create-token`

terraform init
terraform apply