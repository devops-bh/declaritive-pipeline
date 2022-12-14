node {
    stage("Build") {
        image.inside {
            sh "node --version"   
        }
        image.run("docker container run --detach --publish 8081:8080 --name nodeapp") 
    } 
    stage("Test") {
        sh 'curl http://localhost:8081'
        echo 'curl http://localhost:8081'        
    }
    stage("Deploy") {
      def image = docker.build 'devopsbh/nodeapp'
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            image.push 'latest'
        }
       // sh 'ansible-playbook -i inventory ansible-kube-release.yml --tags update'
    }
    state("Confirm Deplyment") {
        /*
        // may need to use ssh since this isn't public 
        //sh "curl http://44.195.81.167:8080"
        //sh "ssh ubuntu@44.195.81.167 curl $(minikube ip):"
        */
        //sh 'ssh ubuntu@44.195.81.167 curl $(minikube node-port-service --url)'
    }
    stage("Cleanup") {
        sh 'done :)'
    } 
}

