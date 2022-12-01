node {
    stage('Hello') {
        echo 'hello docker'
        sh 'docker version'
        sh 'docker login -u devopsbh -p dckr_pat_cEF898pE-CXzUz8RgEmG4ibg5Iw'
        /*
        sh 'docker image build --tag devopsbh/old_jenkins_test:latest .'
        sh 'docker container run --detach --publish 80:80 --name old_jenkins_test devopsbh/old_jenkins_test'
        echo 'unsure if curl is availible'
        sh 'docker image build --tag devopsbh/old_jenkins_test:2.0 .'
        sh 'docker image push devopsbh/old_jenkins_test:2.0'
        sh 'docker container run --rm ubuntu'
        */

        sh 'apt-get update'

        sh 'apt-get -y remove unscd'

        sh 'apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common'

        sh 'curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -'

        sh 'apt-key fingerprint 0EBFCD88'

        sh 'add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"'

        sh 'apt-get update'

        sh 'apt-get -y install docker-ce docker-ce-cli containerd.io'

        sh 'groupadd docker'

        sh 'usermod -aG docker $USER'

        sh 'addgroup --system docker'

        sh 'adduser $USER docker'

        sh 'newgrp docker'
        
        sh 'docker container ls'
        echo 'IGNORE: hopefully pushed to dockerhub'
    }
} 
