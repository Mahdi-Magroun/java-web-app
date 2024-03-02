
pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-mahdi-magroun')
    }
    stages {
        /*stage('test && build') {
            agent{
                docker{
                    image 'eclipse-temurin:11-jdk-alpine'
                    args '''
                    -v ./:/app
                    -w /app
                    -v ./.m2:/root/.m2
                    '''
                    reuseNode true
                }
            }
            steps {
            echo "building ...."
            sh './mvnw clean package  '
            }
        
        }
      /*  stage('package') {
            
            steps {
               echo 'packaging to docker hub ....'  
               sh "docker build -t mahdi0188/spring-boot-docker:latest ."
            }
            
    }
       /* stage("push"){
            steps{
                  echo 'pushing to docker hub ....'  
                    withCredentials([usernamePassword(credentialsId: 'dockerhub-mahdi-magroun', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh "docker login -u $USERNAME -p $PASSWORD"
                        sh "docker push mahdi0188/spring-boot-docker:latest"
                    }
            }
        }*/
         stage('deploy') {

             steps{
                  

                   echo 'deploying ....' 
                    sh "sshpass -p '123' ssh -T useradm@192.168.56.21 "
                    sh "ls -la"
                    sh "ip address"
        
            }
    }
        
    }
}
