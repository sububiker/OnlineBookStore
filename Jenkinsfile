pipeline {
  environment {
    registry = "sububiker/onlinebookstore"
    registryCredential = 'dockersububiker'
    dockerImage = ''
 }
  agent any 
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/sububiker/OnlineBookStore.git'
      }
    }
  }
    stage('Compile Package and Create war file') {
      steps {
        sh "mvn package"
      }
    }
  agent {
      label 'dockerserver'
       steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }

}
}
