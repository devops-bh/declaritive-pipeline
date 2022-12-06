pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'svn --version'
                script {
                    def app = docker.build("devopsbh/test")   
                }
            }
        }
    }
}
