node {
    stage('Hello') {
        sh 'docker version'
        sh 'chmod 777 /workspace@scripts/install-docker.sh'
        sh '/workspace@scripts/install-docker.sh'
        sh 'docker container ls'
    }
} 
