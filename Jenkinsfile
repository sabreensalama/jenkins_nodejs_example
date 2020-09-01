pipeline {
    agent any
    parameters{ 
        choice(name: 'CHOICE', choices: ['CI', 'CD'], description: 'Which pipline?')
        if ("${params.CHOICE}" == "CI" )
        {
          string(name: 'COMMIT-NUM', defaultValue: 'latest', description: 'commit number')

        }

    }
    stages {
        stage('Example') {

            steps {
               echo "Choice: ${params.CHOICE}"
               echo "Commit - number: ${params.COMMIT-NUM}"
            }
        }
    }
}