node {
    def imgName= "reactpro"
    def dockerImage = ''
    stage("init") {
        echo "starting the pipeline"
    }

    stage("cloning into git"){
        git branch: 'main', url: 'https://github.com/AyoushmanGemini/Intern_assign1.git'
    }

    stage('Building image'){
          echo "building the application 2"
        sh 'docker build -t 192.168.36.109:8082/react-pro:latest .'
    }

    stage("login") {
      
        
        
         withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]){
        sh "echo ${PSW} | docker login -u ${USER} --password-stdin 192.168.36.109:8082"
               echo "Login successful"
       
    }
           
           
            
            
        
                         // sh "docker tag ${imgName}:latest 192.168.36.109:8082/${imgName}:latest"
                                                                            sh "docker push https://localhost:8082/react-pro:latest"
    }
}
