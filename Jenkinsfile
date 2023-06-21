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
                     sh 'docker login http://localhost:8081/repository/dockerhosted-repo-react/ -u jenkins-user -p Zeuskiller1@'
                     echo "Above command ran ssuccessfully"
                     sh 'docker push http://localhost:8081/repository/dockerhosted-repo-react/react-pro

               }
            }
        }

       
    
    }   
}
