pipeline {
    agent any

    stages {
        stage ('SCM') {

            steps {
                git ' https://github.com/jaikumarimp/game-of-life.git'
            }
        }
        stage ('build')
        mvn install package

    }
}
