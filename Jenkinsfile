
pipeline {
    agent none
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
            sh 'mvn clean package'
            }
        
        }
        stage('package') {
            steps {
               echo 'pushing to docker hub ....'  
               sh 'ls -la'  
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
           /* steps {
                echo 'deploying ....' 
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                  sh 'docker build -t mahdi0188/myjava_app:latest .' 
            sh 'docker push  mahdi0188/myjava_app:latest '
            sh 'docker logout'
            */
            }
    }
        
    }
}
