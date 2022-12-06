pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            def testImage = docker.build("devopsbh/practice_node_app:latest")
            echo 'Building..'
        }
        stage('Test') {
            testImage.inside.withRun('-p 3306:3306') {
                sh 'sudo lsof -i:8080'
            }
        }
    }
}
