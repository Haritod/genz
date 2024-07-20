pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t secondimage .'
            }
        }
        stage('Delivery') {
            steps {
                sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/l1g4s4j8'
		sh 'docker build -t public.ecr.aws/l1g4s4j8/genzrepo:latest .'
		sh 'docker push public.ecr.aws/l1g4s4j8/genzrepo:latest'
            }
        }
    }
}
