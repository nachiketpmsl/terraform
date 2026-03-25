pipeline{
    agent any
    
    stages{
        stage("Checkout"){
            steps{
                checkout scm
            }
        }
        
        stage("Terraform Init & Plan"){
            steps{
                sh 'terraform init'
                sh 'terraform plan -out=tfplan'
            }
        }
        
        stage("Manual Approval"){
            steps{
                input message: "Does the terraform plan look correct?", ok: "Deploy to AWS"
            }
        }
        
        stage("Terraform APply"){
            steps{
                sh 'terraform apply --auto-approve tfplan'
            }
        }
    }
}
