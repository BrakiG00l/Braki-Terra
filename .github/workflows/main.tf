name: Terraform Deploy

on:
  push:
    branches:
      - main

jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3
      - name: Configure AWS credentials
        uses: aws-actions/configure-aws-credentials@v4
        with:
          role-to-assume: arn:aws:iam::677276094967:role/git-role # Reemplaza con el ARN de tu rol
          aws-region: us-east-1 # Reemplaza con tu región
      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v2
        with:
          terraform_version: 1.5.7
      - name: Terraform Init
        run: terraform init
      - name: Terraform fmt
        run: terraform fmt
      - name: Terraform validate
        run: terraform validate
      - name: Terraform plan
        run: terraform plan
      - name: Terraform apply
        run: terraform apply -auto-approve
