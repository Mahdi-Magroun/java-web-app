
pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-mahdi-magroun')
    }
    stages {
        stage('build') {
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
            sh './mvnw clean package -DskipTests'
            }
        
        }
        stage('package') {
            
               
            steps {
               echo 'packaging to docker hub ....'  
               sh "docker build -t mahdi0188/spring-boot-docker ."

            }
    }
    stage('test') {
            steps {
               echo 'pushing to docker hub ....'  
            }
    }

        stage("push"){
            steps{
                  echo 'pushing to docker hub ....'  
            }
        }
         stage('deploy') {
          
             steps{
                   echo 'deploying ....' 
        
            }
    }
        
    }
}
