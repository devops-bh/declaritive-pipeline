node {
    stage("Build") {
          def image = docker.build 'devopsbh/nodeapp'
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
        sh 'pwd'
        sh 'ls'
        sh "./ansible-playbook -i inventory ansible-kube-release.yml --tags 'update'"
    }
    state("Confirm Deplyment") {
        sh "curl http://54.204.28.63:8080"
    }
    stage("Cleanup") {
        echo "here cleanup woul"
        sh ""
    } 
}

