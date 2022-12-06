node {
    stage("Build") {
          def myEnv = docker.build 'devopsbh/test'
          myEnv.inside {
            sh 'node --version'
          }   
    }
}
