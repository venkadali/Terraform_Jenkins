pipeline {
    agent any

    stages {
        stage('Terraform Init & Apply') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'aws-credentials',
                                                 usernameVariable: 'AWS_ACCESS_KEY_ID',
                                                 passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    bat '''
                        set AWS_ACCESS_KEY_ID=%AWS_ACCESS_KEY_ID%
                        set AWS_SECRET_ACCESS_KEY=%AWS_SECRET_ACCESS_KEY%
                        terraform init
                        terraform apply -auto-approve
                    '''
                }
            }
        }
    }
}

