pipeline {
    agent any    
    environment {
        AWS_DEFAULT_REGION = 'ap-south-1' // Update with your desired AWS region
    }
    stages {
    stage('Checkout') {
      steps {
          git branch: 'main', url: 'https://github.com/azroddinshaikh/terraform.git'
            }
        }
    stage('Integrate Remote k8s with Jenkins ') {
      steps {
          
          withKubeCredentials(kubectlCredentials: [[caCertificate: '', clusterName: 'Kubernetes-Cluster-Cloud', contextName: '', credentialsId: '04d92ede-5708-4901-8c0b-5de9c4c1fa53', namespace: 'default', serverUrl: '']]) {
          sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.27.10/bin/linux/amd64/kubectl"'  
          sh 'chmod u+x ./kubectl'  
          sh './kubectl get nodes'
          sh './kubectl get pods'
          sh './kubectl exec -it terraform-569966f9fd-s5t2l -- terraform --version -- /bin/bash'
          sh './kubectl exec -it terraform-569966f9fd-s5t2l -n default -- /bin/sh -c chdir=terraform/ terraform init'
          sh './kubectl exec -it terraform-569966f9fd-s5t2l -n default -- /bin/sh -c chdir=terraform/ terraform validate'
          sh './kubectl exec -it terraform-569966f9fd-s5t2l -n default -- /bin/sh -c chdir=terraform/ terraform plan'
          sh './kubectl exec -it terraform-569966f9fd-s5t2l -n default -- /bin/sh -c chdir=terraform/ terraform apply'
}
      }
    }
    }
}
