node {
    stage("Build") {
        git branch: 'main', url: 'https://github.com/devops-bh/declaritive-pipeline.git'
        sh 'curl --version' // works
        // echo curl --version
        def image = docker.build 'devopsbh/nodeapp'
        image.inside {
            sh 'node --version'   
            //curl 'http://localhost:8080'
           // sh 'docker container ls'
            sh 'curl --version'            
            sh 'curl ipinfo.io/ip' // EC2 instance IP but not Docker IP 
        }
        //docker container run --detach --publish 80:80 --name linux_tweet_app $DOCKERID/linux_tweet_app:1.0
        image.run("docker container run --detach --publish 8081:8080 --name nodeapp nodeapp")
        /*^^^^.inside { 
            //sh 'curl http://localhost:8080'
            //echo 'curl http://localhost:8080'        
            sh 'ls'
            echo 'ls'
        } */
        //sh 'docker container ls' 
        // 'curl http://localhost:8081'
        // sh 'curl http://3.82.157.75:8081'
        sh 'docker inspect -f "{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}" nodeapp'
        sh 'docker container ls'

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

