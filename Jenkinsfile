pipeline {
    agent any
    parameters{ 

          string(name: 'COMMITNUM', defaultValue: '', description: 'commit number')

        }

    
    stages {
        stage('Clone node repo') {

            steps {
                // sh 'git clone https://github.com/sabreensalama/jenkins_nodejs_example.git'
                // sh 'cd jenkins_nodejs_example'
                echo "hello  ${COMMITNUM}"
                // sh "git fetch origin ${params.COMMIT-NUM}"


            }
        }
    }
}