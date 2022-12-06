pipeline {
    agent {
        dockerfile true
    }
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
    }
    stages { 
        stage('Build docker image') {
            steps {  
                script {
                    step {
                      def newApp = docker.build('devopsbh/practice_node_app:latest')
                        sh 'docker version'
                    } 
                }
            } 
        }
    }
}
