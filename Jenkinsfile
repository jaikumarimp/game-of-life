pipeline {
    agent any
    environment {
         PATH = "/var/jenkins_home/maven/bin/mvn:$PATH"
    }
    stages {
        stage ('SCM') {

            steps {
                git ' https://github.com/jaikumarimp/game-of-life.git'
            }
        }
        stage ('build'){
            steps {
                sh 'mvn package'
            }
        }
        

    }
}
