pipeline {
    agent any
    parameters{ 

          string(name: 'COMMIT-NUM', defaultValue: 'latest', description: 'commit number')

        }

    }
    stages {
        stage('Example') {

            steps {
               echo "Commit - number: ${params.COMMIT-NUM}"
            }
        }
    }
}