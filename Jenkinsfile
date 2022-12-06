node {
    stage("Build") {
            def image = docker.build 'devopsbh/nodeapp:dev'
            docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                image.push 'latest'
            }
            image.inside {
                sh "node --version"   
            }
            image.run("docker container run --detach --publish 8081:8080 --name nodeapp") 
            sh 'curl http://localhost:8081'
        image.stop
    } 
    stage("Test") {
    }
    stage("Deploy") {
    }
    stage("Cleanup") {
    } 
}
