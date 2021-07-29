
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
        stage ('Docker build'){
            steps {
              //withCredentials([usernameColonPassword(credentialsId: 'dockerpass1', variable: 'dockerpass')]) {
                //sh "docker login -u jaikumarimp -p ${dockerpass} "
                
              //}

    // some block
            docker built . -t  gol 
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