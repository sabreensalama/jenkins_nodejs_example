pipeline {
    agent any
    parameters{ 

        choice(name: 'CHOICE', choices: ['dev', 'test'], description: 'which namesapce')

        }

    
    stages {

        stage('deploy app') {

            steps {
            sh "kubectl apply -f . --namespace ${CHOICE}"
            }
        }

    }

