def gv

pipeline {
    agent any
   
    stages {
        stage("init") {
            steps {
                script {
                   echo "building the application"
                 
                }
            }
        }
        stage("build") {
            steps {
                script {
                     echo "building the application 2"
                     git branch: 'main', url: 'https://github.com/AyoushmanGemini/Intern_assign1.git'
                     sh 'docker build . -t react-pro'
                     echo "docker build successful"
                    withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]){
        sh "echo ${PSW} | docker login -u ${USER} --password-stdin http://localhost:8082"
        sh "docker push http://localhost:8082/react-pro:${BUILD_NUMBER}"
    }

               }
            }
        }

       
    
    }   
}
