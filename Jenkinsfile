pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building..."'
                sh 'chmod +x Linux-CBuild.sh'
                sh './Linux-CBuild.sh'
                sh 'ls'
                
        
            }

        }

        stage('Test'){
            steps{
                sh 'echo "Running..."'
           
                sh './sample10_unittest'
            }
        }


    }

}
