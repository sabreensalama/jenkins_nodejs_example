pipeline {
    agent any
    parameters{ 

          string(name: 'COMMIT-NUM', defaultValue: 'latest', description: 'commit number')

        }

    
    stages {
        stage('Clone node repo') {

            steps {
                // sh 'git remote add origin https://github.com/sabreensalama/jenkins_nodejs_example.git'
                sh "git reset --hard  ${params.COMMIT-NUM}"
                // sh "git fetch origin ${params.COMMIT-NUM}"


            }
        }
    }
}