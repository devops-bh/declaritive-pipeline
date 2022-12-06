node {
    stage("Build") {
            def image = docker.build 'devopsbh/nodeapp:latest'
            docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                image.push 'latest'
            }
    } 
    stage("Test") {
        image.inside {
            sh "node --version"   
        }
        image.run("docker container run --detach --publish 8081:8080 --name nodeapp") 
        sh 'curl http://localhost:8081'
    }
    stage("Deploy") {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            image.push 'latest'
        }        
    }
    stage("Cleanup") {

    } 
}
