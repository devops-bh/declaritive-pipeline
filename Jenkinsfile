pipeline {
    agent { dockerfile true }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    stages {
        stage('Build') {
            script {
                steps {
                    step {
                        def testImage = docker.build("devopsbh/practice_node_app:latest")
                        echo 'Building..'
                    }
                }
            }
        }
    }
}
