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
    stage('Compile Package and Create war file') {
      steps {
        sh "mvn package"
      }
    }
   stage('Building image')
       agent {
                label ("dockerserver")
       } {
       steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Test Image' )
        agent {
                label ("dockerserver")
       } {
                agent {
                docker { image 'sububiker/onlinebookstore:$BUILD_NUMBER' }
            }
            steps {
                sh 'docker --version'
            }
        }
    stage('Deploy Image') 
       agent {
                label ("dockerserver")
       } {
      steps{
        script {
          withCredentials([usernamePassword( credentialsId: 'dockersububiker', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          docker.withRegistry('https://registry.hub.docker.com', 'dockersububiker') {
          sh "docker login -u ${USERNAME} -p ${PASSWORD}"
          dockerImage.push("$BUILD_NUMBER")
          dockerImage.push("latest")
          //sh "/home/hemant_pati/dockerpush.sh ${BUILD_NUMBER}"
            }
        }
      }
    }
  }
  }
}
