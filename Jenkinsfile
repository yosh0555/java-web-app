pipeline {
    agent any
    stages {
        stage ('checkout code') {
            steps {
                git branch: 'main', url: 'https://github.com/yosh0555/java-web-app.git'
            }
        }
        stage ('build code') {
            steps {
                sh '/opt/maven/bin/mvn clean package'
            }
        }
        stage ('deploy code') {
            steps {
                deploy adapters: [tomcat9(url: 'http://107.20.91.211:8080', credentialsId: 'tomcat-creds')], war: 'target/*.war'
            }
        }
    }
}