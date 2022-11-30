pipeline {
    agent {
        dockerfile true   
    }

    stages {
        stage('Build') {
            steps {
                  def newApp = docker.build "devopsbh/practice_node_app:latest"
                  newApp.push()
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
