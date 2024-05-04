pipeline {
    agent {
        node {
            label 'jenkins-slave-label'
        }
    }
    stages {
        stage ('checkout code') {
            steps {
                git branch: 'main', url: 'https://github.com/yosh0555/java-web-app.git'
            }
        }
    }
}