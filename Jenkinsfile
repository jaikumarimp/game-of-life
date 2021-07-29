
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
        /*stage ('Docker build'){
            steps {
              //withCredentials([usernameColonPassword(credentialsId: 'dockerpass1', variable: 'dockerpass')]) {
                //sh "docker login -u jaikumarimp -p ${dockerpass} "
                
              //}

    // some block
            sh "docker build . -t  gol -f ./gameoflife-web/Dockerfile "
            }
        }*/

        stage ('docker build'){

            steps{
                sshagent(['ec2-user']) {
                    sh 'ssh -o StrictHostKeyChecking=no ec2-user@54.221.171.35 uptime'
                }   

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