pipeline {
    agent any
    parameters{ 

        choice(name: 'CHOICE', choices: ['dev', 'test'], description: 'which namesapce')

        }

    
    stages {


        stage('build image for node-app') {

            steps {
            sh "kubectl apply -f . --namespace ${CHOICE}"
            }
        }

    }
}