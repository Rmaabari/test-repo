pipeline {
    agent any

    stages {
        stage('Merge') {
            steps {
                git branch: 'main', url: 'https://github.com/Rmaabari/test-repo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'python main.py'
            }
        }
    }
}
