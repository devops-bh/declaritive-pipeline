node {
    stage("Build") {
        def image = docker.build 'devopsbh/nodeapp'
        docker.withDockerContainer('devops/nodeapp', 'nodeapp') {
            sh 'ls'
        }
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

