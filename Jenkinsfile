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
                }
            }
        }

       
    
    }   
}
