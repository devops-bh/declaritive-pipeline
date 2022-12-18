node {
    stage("Build") {
        git branch: 'main', url: 'https://github.com/devops-bh/declaritive-pipeline.git'
        sh 'docker image build --tag devopsbh/nodeapp .'    
    } 
    stage("Test") {
        sh 'docker run --name nodeappcontainer --detach --publish 8081:8080 devopsbh/nodeapp'
        sh 'docker container ls'
        sh 'curl http://localhost:8081'    
        sh 'docker stop nodeappcontainer'
    }
    stage("Deploy") {
      def image = docker.build 'devopsbh/nodeapp'
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            image.push 'latest'
        }
       sh 'ansible-playbook -i inventory ansible-kube-release.yml --tags update'
    }
    stage("Confirm Deplyment") {
        /*
         sh 'ssh ubuntu@3.231.223.4 curl $(minikube node-port-service --url)'
        // sh 'ssh ubuntu@34.239.128.19 kubectl get services'
        */
    }
    stage("Cleanup") {
        echo 'done :)'
        // I stopped the shell invoked Docker container early in case it conflicted with the Docker Workflow plugin's container instance 
        sh 'docker rm nodeappcontainer'  
        // sorry for not commiting to 1 way or the other; I wanted to use Docker Worfklow but realises that "curling" it was awkward 
    } 
}

