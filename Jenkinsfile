node {
    stage('Hello') {
        sh 'chmod 777 /var/jenkins_home/jobs/docker-workflow/workspace@script/alias-docker.sh'
        sh '/var/jenkins_home/jobs/docker-workflow/workspace@script/docker/alias-docker.sh'
        sh 'docker container ls'
    }
} 
