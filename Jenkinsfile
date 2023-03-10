pipeline {
    agent any
    
    stages {
        stage('Test') {
            when {
                changeset "github.com/Rmaabari/test-repo"
            }
            steps {
                sh 'main.py' // execute main.py python script when ever 
            }
        }
    }
}
