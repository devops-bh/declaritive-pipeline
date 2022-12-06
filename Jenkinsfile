node {
    stage("Build") {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            def image = docker.build 'devopsbh/nodeapp:latest'
            image.inside {
                sh "node --version"   
            }
            image.run("docker container run --detach --publish 8081:8080 --name nodeapp") 
            image.push 'latest'
        }
    } 
    stage("Test") {
        sh 'curl http://localhost:8081'
    }
    stage("Deploy") {

    }
    stage("Cleanup") {

    } 
}
