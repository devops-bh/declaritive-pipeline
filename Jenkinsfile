pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                echo 'docker version'
                sh 'docker version'
            }
        }
    }
}
