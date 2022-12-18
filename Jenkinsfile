node {
    stage("Build") {
        git branch: 'main', url: 'https://github.com/devops-bh/declaritive-pipeline.git'
        sh 'docker image build --tag devopsbh/nodeapp .'    
    } 
    stage("Test") {
        sh 'docker run --name nodeappcontainer --detach --publish 8081:8080 devopsbh/nodeapp'
        sh 'echo $(docker container ls)'
        sh 'echo $(curl http://localhost:8081)'    
        sh 'docker stop nodeappcontainer'
        sh 'docker rm nodeappcontainer'  
    }
    stage("Deploy") {
      def image = docker.build 'devopsbh/nodeapp'
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            image.push 'latest'
        }
        // Having 2 different users access the same instance was too awkward for the scope of this project :| 
       sh 'ansible-playbook -i inventory ansible-kube-release.yml --tags update'
        /*sshagent(['jssh']) {
            sh 'ssh ubuntu@34.235.26.99 kubectl set image deployments/nodeapp nodeapp=devopsbh/nodeapp:latest'
            sh 'echo $(ssh ubuntu@34.235.26.99 kubectl rollout status deployments/nodeapp)'
        }*/
    }
    stage("Confirm Deplyment") {
        sshagent(['jssh']) {
            sh 'echo $(ssh ubuntu@34.235.26.99 curl $(minikube node-port-service --url))'
            sh 'echo $(ssh ubuntu@34.235.26.99 kubectl get services)'
            // could optionally Ngrok here too 
        }
        echo 'go run kubernetes manually :)'
    }
    stage("Cleanup") {
        echo 'done :)'
        // I stopped the shell invoked Docker container early in case it conflicted with the Docker Workflow plugin's container instance 
        // sorry for not commiting to 1 way or the other; I wanted to use Docker Worfklow but realises that "curling" it was awkward 
    } 
}

