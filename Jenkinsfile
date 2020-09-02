pipeline {
    agent any
    parameters{ 

        choice(name: 'CHOICE', choices: ['dev', 'test'], description: 'which namesapce')

        }

    
    stages {

        stage('deploy app') {

            steps {
            sh "sed -i 's/ht/${env.HOST}/g' ./node-app-configmap.yml"
            sh "sed -i 's/ur/${env.USER}/g' ./node-app-configmap.yml"
            sh "sed -i 's/pd/${env.PASSWORD}/g' ./node-app-configmap.yml"
            sh "sed -i 's/db/${env.DATABASE}/g' ./node-app-configmap.yml"


            sh "kubectl apply -f . --namespace ${params.CHOICE}"
            }
        }

    }
}

