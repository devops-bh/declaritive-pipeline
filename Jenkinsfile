node {
    stage('Hello') {
        sh 'docker version'
        sh 'echo pwd'
        sh 'ls'
        sh 'pwd'
        sh 'chmod 777 ./workspace@scripts/install-docker.sh'
        sh './workspace@scripts/install-docker.sh'
        sh 'docker container ls'
    }
} 
