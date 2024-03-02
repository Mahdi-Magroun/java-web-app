
pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub-mahdi-magroun')
    }
    stages {
    /*    stage('test && build') {
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
       stage('package') {
            
            steps {
               echo 'packaging to docker hub ....'  
               sh "docker build -t mahdi0188/spring-boot-docker:latest ."
            }
            
    }
        stage("push"){
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
                

                   withCredentials([usernamePassword(credentialsId: 'dockerhub-mahdi-magroun', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                  sshPublisher(publishers: [sshPublisherDesc(configName: 'cha3nouna',
                    verbose: true,
                    transfers: [
                        sshTransfer(cleanRemote: false,
                        excludes: '',
                        execCommand: ''''
                            docker stop spring-boot-docker  || true ;
                            docker rm  spring-boot-docker  || true;
                            docker login -u $USERNAME -p $PASSWORD ;
                            docker pull mahdi0188/spring-boot-docker:latest ;
                            docker run -d  --name spring-boot-docker mahdi0188/spring-boot-docker:latest

                        ''',
                        
                        )
                    ],
                  )
                  ])
                   
                 
                     

                   }


         

                

            

        
            }
    
        
    }
}
}
