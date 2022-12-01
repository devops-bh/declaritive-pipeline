node {
    stage('Hello') {
        sh 'chmod 777 /var/jenkins_home/jobs/docker-workflow/workspace@script/install-docker.sh'
        sh '/var/jenkins_home/jobs/docker-workflow/workspace@script/install-docker.sh'
        /* sh 'docker container ls'  fails */
        sh '/var/jenkins_home/jobs/docker-workflow/workspace@script/docker container ls'
    }
} 
