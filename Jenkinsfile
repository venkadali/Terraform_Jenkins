pipeline {
  agent any

  environment {
    AWS_DEFAULT_REGION = 'ap-south-1'
    AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')       // Set in Jenkins credentials
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
  }

  stages {
    stage('Checkout Code') {
      steps {
        git url: 'https://github.com/venkadali/Terraform_Jenkins.git', branch: 'master' 
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan -out=tfplan'
      }
    }

    stage('Terraform Apply') {
      steps {
        input message: "Approve Apply?"
        sh 'terraform apply -auto-approve tfplan'
      }
    }

    stage('Output') {
      steps {
        sh 'terraform output'
      }
    }
  }
}
