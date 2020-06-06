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
                /*git 'https://github.com/sububiker/OnlineBookStore.git'*/
                /*checkout scm */
                sh 'echo subrat'
            }
        }
        stage('docker build in Linux') {
            agent { 
                label 'dockerserver'
            }
            steps {
                sh 'echo "Subrat"'
                git 'https://github.com/sububiker/OnlineBookStore.git'
                checkout scm
                sh 'mvn package'
                       script {
                          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
            }
        }
        stage('docker push on linux') {
            agent {
                label 'dockerserver'
            }
            steps {
                sh 'docker images' 
                sh 'docker run -d -p 8888:8888 --name onlinebookstore sububiker/onlinebookstore:73'
            }
        }
    }
}
