pipeline {
    agent any

    stages {
        stage('Merge') {
            steps {
                git branch: 'main', url: 'https://github.com/Rmaabari/test-repo.git'
            }
        }
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        sh 'echo "Deploying..."'
        sh 'python main.py'
      }
    }
  }
}
