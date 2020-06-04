pipeline {
  environment {
    registry = "sububiker/onlinebookstore"
    registryCredential = 'dockersububiker'
    dockerImage = ''
 }
    agent none
    stages {
        stage('Cloning Git') {
            agent any
            steps {
                git 'https://github.com/sububiker/OnlineBookStore.git'
                /*checkout scm */
                sh 'mvn package'
            }
        }
        stage('docker build in Linux') {
            agent { 
                label 'dockerserver'
            }
            steps {
                sh 'echo "Subrat"'
                dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
        }
        stage('docker push on linux') {
            agent {
                label 'dockerserver'
            }
            steps {
                sh 'docker images' 
            }
        }
    }
}
