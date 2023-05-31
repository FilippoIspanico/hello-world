pipeline{
    agent any
    stages{
        stage('Build'){
            steps{
                sh 'echo "Building..."'
                sh 'chmod +x Linux-CBuild.sh'
                sh 'sudo apt-get install libgtest-dev'
                sh 'sudo apt-get install cmake'
                sh 'sudo apt-get install g++'
                sh 'cd /usr/src/gtest && sudo cmake CMakeLists.txt && sudo make'
                sh 'cd /usr/lib/x86_64-linux-gnu/'
                sh 'cp libgtest.a libgtest_main.a /usr/lib'
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
