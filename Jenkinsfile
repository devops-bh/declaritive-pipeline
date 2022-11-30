pipeline {
    agent any 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('devopsbh-dockerhub')
    }
    stages { 
        stage('Build docker image') {
            steps {  
                 node {
                      def newApp = docker.build "devopsbh/practice_node_app:latest"
                     echo 'building'
                }
            }
        }
        state('test') {
            echo 'todo: run command against or inside docker container'
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                  def newApp = docker.build "devopsbh/practice_node_app:latest"
                  newApp.push()
                  echo 'pushing..'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}

