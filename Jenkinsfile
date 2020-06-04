pipeline {
    agent none
    stages {
        stage('Cloning Git') {
            agent any
            steps {
                git 'https://github.com/sububiker/OnlineBookStore.git'
                /*checkout scm */
            }
        }
        stage('Test on Linux') {
            agent { 
                label 'dockerserver'
            }
            steps {
                sh 'echo "Subrat"'
            }
        }
        stage('Test on linux') {
            agent {
                label 'dockerserver'
            }
            steps {
                sh 'docker images' 
            }
        }
    }
}
