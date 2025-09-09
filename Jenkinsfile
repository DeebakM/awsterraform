pipeline {
  agent any
  environment {
    AWS_ACCESS_KEY_ID  = credentials('aws-access-key')
    AWS_SECRET_KEY_ID  = credentials('aws-secret-key')
    AWS_DEFAULT_REGION = "us-east-1"
  }

  stages {

    stage('git clone'){
      steps {
        git branch:'main', url:'https://github.com/DeebakM/terraformproject.git'
      }
    }
    stage('terraform init') {
      steps {
        bat 'terraform init'
      }
    }
    stage('terraform plan') {
      steps {
        bat 'terraform plan'
      }
    }
    stage('terraform Apply') {
      steps {
        bat 'terraform apply -auto-approve tfplan'
      }
    }
  }
}