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
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 9100:80 secondimage '
            }
        }
    }
}
