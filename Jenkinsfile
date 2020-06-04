pipeline {
    agent none
    stages {
        stage('Build') {
            agent any
            steps {
                checkout scm
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
        stage('Test on Windows') {
            agent {
                label 'dockerserver'
            }
            steps {
                sh 'docker images' 
            }
        }
    }
}
