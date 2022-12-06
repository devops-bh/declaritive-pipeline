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
                  def newApp = docker.build('devopsbh/practice_node_app:latest')
            }
        }
    }
    post {
        always {
            sh 'docker logout'
        }
    }
}
