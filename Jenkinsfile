
pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub-mahdi-magroun')
	}
    stages {
        stage('build') {
            steps {
            echo "building ...."
            sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('test') {
            steps {
                echo 'testing .... ' 
                  sh 'mvn test' 
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml' 
                }
            }
    }
         stage('deploy') {
            steps {
                echo 'deploying ....' 
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                  sh 'docker build -t mahdi0188/myjava_app:latest .' 
		    sh 'docker push  mahdi0188/myjava_app:latest '
		    sh 'docker logout'
            }
    }
        
    }
}
