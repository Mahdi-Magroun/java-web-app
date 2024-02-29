
pipeline {
    agent any

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
                  sh 'docker build -t myjava_app .'
            }
    }
        
    }
}
