pipeline {
  environment {
    registry = "hemantakumarpati/onlinebookstore"
    registryCredential = 'dockeruser'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/Hemantakumarpati/OnlineBookStore.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry([credentialsId: 'dockeruser', url: 'https://hub.docker.com']) {
          //docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
   }
}
