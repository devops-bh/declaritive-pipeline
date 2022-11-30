pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                echo 'docker version'
                sh 'docker image build --tag devopsbh/practice_node_app:latest .'
                sh 'docker docker login -p dckr_pat_R8yXrD6mLXPml6AYzZ696h6Cy8g -u devopsbh'
                sh 'docker image push devopsbh/linux_tweet_app:latest'
            }
        }
    }
}
