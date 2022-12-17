node {
    stage("Build") {
        git branch: 'main', url: 'https://github.com/devops-bh/declaritive-pipeline.git'
        sh 'docker image build --tag devopsbh/nodeapp .'    
        sh 'docker container run --detach --publish 8081:8080 devopsbh/nodeapp'
        sh 'curl http://localhost:8081'
    } 
    stage("Test") {
        // curl 'http://google.com'
    }
    stage("Deploy") {
        /* 
      def image = docker.build 'devopsbh/nodeapp'
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            image.push 'latest'
        }
       sh 'ansible-playbook -i inventory ansible-kube-release.yml --tags update'
        */
    }
    stage("Confirm Deplyment") {
        /*
        // may need to use ssh since this isn't public 
        //sh "curl http://44.195.81.167:8080"
        //sh "ssh ubuntu@44.195.81.167 curl $(minikube ip):"
         sh 'ssh ubuntu@3.231.223.4 curl $(minikube node-port-service --url)'
        */
        //echo 'attempting ssh'
        // sh 'ssh ubuntu@3.82.157.75 kubectl get services'
    }
    stage("Cleanup") {
        //sh 'done :)'
    } 
}

