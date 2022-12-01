node {
    stage('Hello') {
        echo 'hello docker'
        sh 'docker version'
        sh 'docker login -u devopsbh -p dckr_pat_cEF898pE-CXzUz8RgEmG4ibg5Iw'
        sh 'docker image build --tag devopsbh/old_jenkins_test:latest .'
        sh 'docker container run --detach --publish 80:80 --name old_jenkins_test devopsbh/old_jenkins'
        echo 'unsure if curl is availible'
        sh 'docker image build --tag devopsbh/old_jenkins_test:2.0 .'
        sh 'docker image push devopsbh/old_jenkins_test:2.0'
        echo 'hopefully pushed to dockerhub'
    }
} 
