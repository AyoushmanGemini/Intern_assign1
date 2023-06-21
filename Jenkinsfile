def gv

pipeline {
    agent any
    parameters {
        choice(name: 'VERSION', choices: ['1.1.0', '1.2.0', '1.3.0'], description: '')
        booleanParam(name: 'executeTests', defaultValue: true, description: '')
    }
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
