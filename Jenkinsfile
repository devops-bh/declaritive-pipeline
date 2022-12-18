node {
    stage("Build") {
        git branch: 'main', url: 'https://github.com/devops-bh/declaritive-pipeline.git'
        sh 'docker image build --tag devopsbh/nodeapp .'    
    } 
    stage("Test") {
        sh 'docker container run --detach --publish 8081:8080 devopsbh/nodeapp'
        sh 'curl http://localhost:8081'    
        sh 'docker container stop nodeapp'
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
         sh 'ssh ubuntu@3.231.223.4 curl $(minikube node-port-service --url)'
        // sh 'ssh ubuntu@3.82.157.75 kubectl get services'
        */
    }
    stage("Cleanup") {
        echo 'done :)'
        // I stopped the shell invoked Docker container early in case it conflicted with the Docker Workflow plugin's container instance 
        // sorry for not commiting to 1 way or the other; I wanted to use Docker Worfklow but realises that "curling" it was awkward 
    } 
}

