pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
                  def testImage = docker.build("devopsbh/practice_node_app:latest")
                echo 'Building..'
        }
        
        stage('Test') {
                echo 'Testing..'
                testImage.inside.withRun('-p 3306:3306') {
                    sh 'sudo lsof -i:8080'
                }                
                sh 'curl http://localhost'
        }
        stage('Deploy') {
            echo 'declaritive'
        }
    }
}
