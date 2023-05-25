pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building..."'
                sh 'chmod +x Linux-CBuild.sh'
                sh './Linux-CBuild.sh'
                
        
            }

        }

        stage('Test'){
            steps{
                sh 'echo "Running..."'
           
                sh './calc_test'
            }
        }


    }

}
