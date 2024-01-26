pipeline {
    agent {
        label 'EC2-agent'
        }

    stages {
        stage('Pull') {
            steps {
                checkout scm
            }
        }
        stage('Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Initialize') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            sh '''sleep 2m
            terraform destroy -auto-approve'''
        }
    }
}