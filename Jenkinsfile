node {
    stage("Build") {
          def image = docker.build 'devopsbh/test'
        image.inside {
            sh "node --version"   
        }
        image.withRun {
               
        }
    } 
    stage("Test") {
        
    }
}
