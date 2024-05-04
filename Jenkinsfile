pipeline {
    agent {
        node {
            label 'jenkins-slave-label || jenkins-slave-label-2' 
        }
    }
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
    }
}