pipeline {
    agent any
 
    stages {
        stage('Install Terraform') {
            steps {
                sh 'curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -'
                sh 'apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"'
                sh 'apt-get update && apt-get install terraform'
            }
        }
        // Add other stages for your pipeline
    }
}
