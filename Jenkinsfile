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
                      def newApp = docker.build "devopsbh/practice_node_app:latest"
                     echo 'building'
            }
        }
        stage('test') {
            steps {            
                echo 'todo: run command against or inside docker container'
            }
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
