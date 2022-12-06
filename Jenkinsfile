node {
    stage("Build") {
          def image = docker.build 'devopsbh/test'
    } 
    stage("Test") {
          image.inside {
            sh 'node --version'
          }   
        image.run()
        
    }
}
