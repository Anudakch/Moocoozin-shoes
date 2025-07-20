pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                sh 'docker build -t moocozin-shoes .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -d -p 8080:8080 moocozin-shoes'
            }
        }
    }
}