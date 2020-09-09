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

                sh "git checkout ${params.CommitNum}"


            }
        }

        stage('build image for node-app') {

            steps {
                script{
                     docker.build registry
                }
            }
        }

        stage('push node-app image to dockerhub') {

            steps {
                script{
                     docker.withRegistry( '', registryCredential ) {
                        sh "docker push $registry"
                     }
                }
            }
        }

        stage('build image for nexus') {

            steps {
              sh "docker build -t ${env.nexus-ip}/node-app . "
            }
        }

        stage('push image to nexus') {

            steps {
              sh "docker login -u  ${env.NEXUS-USER} -p ${env.NEXUS-PASS}  ${env.NEXUS-IP}"
            }
        }
    }
}