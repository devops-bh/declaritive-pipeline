pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                def customImage = docker.build("devopsbh/mytest:latest")
            customImage.inside {
                    sh 'node --version'
                }
            }
        }
    }
}
