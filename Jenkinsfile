pipeline {
    agent any
    environment {
         /var/jenkins_home/maven/bin/mvn
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
