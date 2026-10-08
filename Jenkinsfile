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
        // stage('Docker Build') {
        //     steps {
        //         script {
        //             // Builds the Docker image locally on the Jenkins machine
        //             bat 'docker build -t spring-boot-app:latest .'
        //         }
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         script {
        //             // Stop/remove existing container if it exists
        //             sh 'docker stop spring-boot-container || true'
        //             sh 'docker rm spring-boot-container || true'
        //             // Run the new container
        //             sh 'docker run -d --name spring-boot-container -p 8080:8080 spring-boot-app:latest'
        //         }
        //     }
        // }
    }
}
