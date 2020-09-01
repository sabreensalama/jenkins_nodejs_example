pipeline {
    agent any
    parameters{ 

          string(name: 'CommitNum', defaultValue: '', description: 'commit number')

        }

    
    stages {
        stage('Clone node repo') {

            steps {
                // sh 'git clone https://github.com/sabreensalama/jenkins_nodejs_example.git'
                // sh 'cd jenkins_nodejs_example'
                echo "hello  ${params.CommitNum}"
                // sh "git fetch origin ${params.COMMIT-NUM}"


            }
        }
    }
}