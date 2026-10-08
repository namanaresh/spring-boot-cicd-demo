pipeline {
    agent any
    tools {
        maven 'Maven3'
    }    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/namanaresh/spring-boot-cicd-demo.git'
            }
        }
        stage('Build') {
            steps {
                // Assuming Maven is used
                bat 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    // Builds the Docker image locally on the Jenkins machine
                    bat 'docker build -t spring-boot-app:latest .'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Run the new container
                    bat 'docker rm -f spring-boot-container || exit 0'
                    bat 'docker run -d --name spring-boot-container -p 8089:8080 spring-boot-app:latest'
                }
            }
        }
    }
}
