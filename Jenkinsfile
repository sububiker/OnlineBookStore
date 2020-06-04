pipeline {
  environment {
    registry = "sububiker/onlinebookstore"
    registryCredential = 'dockersububiker'
    dockerImage = ''
 }

  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/sububiker/OnlineBookStore.git'
      }
    }
  
    stage('Compile Package and Create war file') {
      steps {
        sh "mvn package"
      }
    }
  
    stage('docker-build')
      agent {
      label 'dockerserver'
      }
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
   
  }
}
