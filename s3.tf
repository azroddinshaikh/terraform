pipeline {
    agent any
    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
        AWS_ACCESS_KEY_ID = credentials('AKIA35O7LUCBURJB45KU')
        AWS_SECRET_ACCESS_KEY = credentials('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')
    }
    stages {
        stage('Create S3 Bucket') {
            steps {
                script {
                    sh 'aws s3api create-bucket --bucket my-bucket-name --region your-region --create-bucket-configuration LocationConstraint=ap-south-1'
                }
            }
        }
    }
}
