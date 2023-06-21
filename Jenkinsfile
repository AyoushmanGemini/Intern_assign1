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
                     sh 'docker build . -t reactpro'
                     echo "docker build successful"
//                    sh 'docker login -u admin -p Zeuskiller1@ http://localhost:8082/repository/dockerhosted-repo-react/'
// sh 'docker push http://localhost:8082/repository/dockerhosted-repo-react/react-pro}'

withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]){
        sh "echo ${PSW} | docker login -u ${USER} --password-stdin http://localhost:8082/"
        
        echo "Login successful"
         sh "docker push http://localhost:8082/repository/dockerhosted-repo/reactpro:${BUILD_NUMBER}"
    }


    }

               }
            }
        }

       
    
    }   

