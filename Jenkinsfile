pipeline {
    agent any
    parameters{ 

          string(name: 'CommitNum', defaultValue: '', description: 'commit number')

        }

    
    stages {
        stage('Clone node repo') {

            steps {
                sh 'cd jenkins_nodejs_example'
                sh "git fetch origin ${params.CommitNum}"
                sh "git reset --hard ${params.CommitNum}"


            }
        }
    }
}