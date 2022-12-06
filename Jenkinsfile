pipeline {
    agent { dockerfile true }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker build --tag devopsbh/test'
            }
        }
    }
}
