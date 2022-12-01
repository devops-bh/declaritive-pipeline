node {
    stage('Hello') {
        echo 'hello docker'
        sh 'docker version'
        sh 'docker login -u devopsbh -p dckr_pat_cEF898pE-CXzUz8RgEmG4ibg5Iw'
        sh 'ls /var/jenkins_home/jobs/docker-workflow/workspace/'
        echo 'hopefully pushed to dockerhub'
    }
} 
