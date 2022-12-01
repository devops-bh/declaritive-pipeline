node {
    stage('Hello') {
        /* sh 'docker container ls'  fails */
        echo 'pwd'
        sh 'pwd'
        sh '/var/jenkins_home/jobs/docker-workflow/workspace@script/docker container ls'
    }
} 
