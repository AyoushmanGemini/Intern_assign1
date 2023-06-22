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
        sh 'docker build -t 127.0.1.1:8082/react-pro:latest .'
    }

    stage("login") {
      
        
        
         withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]){
        sh "echo ${PSW} | docker login -u ${USER} --password-stdin 127.0.1.1:8082"
               echo "Login successful"
       
    }

    }


      stage("Push image") {
      
        echo "Pushing image in the nexus repositary"
                      sh "docker push 127.0.1.1:8082/react-pro:latest"
          echo   "Image pushed successfully!!"
       
    }


  stage('Deploying to Kubernetes') {


                    withKubeConfig([credentialsId: 'mukube-config']) {
            sh 'kubectl apply -f Deployment.yaml'
        }
    }
  }
  
           
            
            
        
                    
                                                              
    

