pipeline {
  agent {
    dockerfile true 
  }
  stages {
    stage('Example') {
      steps {
        echo 'Hello world!'
        sh 'node --version'
        sh 'docker version'
      }
    }
  }
}
