pipeline {
    agent any

    stages {
        stage('Checkout Code (SSH)') {
            steps {
                git credentialsId: 'trial-ssh-key',
                    url: 'git@github.com:anvitha-rao10/trial.git'
            }
        }

        stage('Verify') {
            steps {
                sh 'ls -la'
            }
        }
    }
}
