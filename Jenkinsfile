node {
    stage('Hello') {
        sh 'alias hi="echo test"'
        sh 'hi'
        sh 'alias docker="/var/jenkins_home/jobs/docker-workflow/workspace@script/"'
        sh 'docker container ls'
    }
} 
