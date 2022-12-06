pipeline {
    agent { dockerfile true }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    stages {
        stage('Build') {
            def testImage = docker.build("devopsbh/practice_node_app:latest")
            echo 'Building..'
        }
        stage('Test') {
            testImage.inside.withRun('-p 3306:3306') {
            sh 'sudo lsof -i:8080'
            steps {
                sh 'node --version'
            }
        }
    }
    }
}
