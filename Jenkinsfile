pipeline {
  agent any
  environment {
        AWS_REGION = "us-east-1"
  }

  stages {

    stage('git clone'){
      steps {
        git branch:'main', changelog: false, poll: false, url:'https://github.com/DeebakM/terraformproject.git'
        credentialsId: 'Jenkins-Github'
      }
    }
    stage('terraform init') {
      steps {
        bat 'terraform init'
      }
    }
    stage('terraform plan') {
      steps {
        withAWS(credentials: 'aws-jenkins-vpc', region: "${AWS_REGION}") {
          bat 'terraform plan -out=tfplan'
        }
      
      }
    }
    stage('terraform Apply') {
      steps {
        withAWS(credentials: 'aws-jenkins-vpc', region: "${AWS_REGION}") {
          bat 'terraform apply -auto-approve tfplan'

        }
        
      }
    }
  }
}