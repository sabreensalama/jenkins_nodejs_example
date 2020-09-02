pipeline {
    agent any
    parameters{ 

          string(name: 'CommitNum', defaultValue: 'a197e3d7c66c041541fcaa1302803da7b4daf028', description: 'commit number')

        }
        environment {
            registry = "sabreensalama/jenkins-node-app:latest"
            registryCredential = "dockerhub"
                  }

    
    stages {
        stage('Clone node app stage to specific commit') {

            steps {
                sh 'cd jenkins_nodejs_example'
                sh "git fetch origin ${params.CommitNum}"
                sh "git reset --hard ${params.CommitNum}"


            }
        }

        stage('build image for node-app') {

            steps {
                script{
                     docker.build registry
                }
            }
        }
    }
}