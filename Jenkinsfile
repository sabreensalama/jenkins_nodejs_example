pipeline {
    agent any
    parameters{ 

          string(name: 'COMMIT-NUM', defaultValue: 'latest', description: 'commit number')

        }

    
    stages {
        stage('Clone node repo') {

            steps {
                sh 'git clone https://github.com/sabreensalama/jenkins_nodejs_example.git'
                sh 'cd jenkins_nodejs_example'
                sh "git reset --hard  ${params.COMMIT-NUM}"
                // sh "git fetch origin ${params.COMMIT-NUM}"


            }
        }
    }
}