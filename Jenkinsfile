
pipeline {
    agent any
    environment {
         PATH = "/var/jenkins_home/maven/bin:$PATH"
    }
    stages {
        stage ('SCM') {

            steps {
                git ' https://github.com/jaikumarimp/game-of-life.git'
            }
        }
        stage ('build'){
            steps {
                sh 'mvn clean install'
            }
        }
        stages ('Docker build'){
            withCredentials([usernameColonPassword(credentialsId: 'dockerpass1', variable: 'dockerpass')]) {
                sh "docker login -u ${dockerpass1} -p ${dockerpass}"
                sh "docker build -t gol"
    // some block
            }
        }
    }
    post {
        success {
        archive '**/*.war'
        junit '**/TEST-*.xml'
        }
    }
}