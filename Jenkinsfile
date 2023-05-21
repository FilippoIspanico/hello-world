pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building..."'
                sh 'chmod +x Linux-Build.sh'
                sh './Linux-Build.sh'
                
        
            }

        }

        stage('Test'){
            steps{
                sh 'echo "Running..."'
                sh 'chmod +x Linux-Run.sh'
                sh './HelloWorld'
            }
        }


    }

}
