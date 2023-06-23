 node {
    def imgName = "reactpro"
    def dockerImage = ''

    stage("init") {
        echo "Starting the pipeline"
    }

    stage("Cloning into git") {
        git branch: 'main', url: 'https://github.com/AyoushmanGemini/Intern_assign1.git'
    }

    stage('Building image') {
        echo "Building the application"
        sh 'docker build -t 127.0.1.1:8082/react-pro:latest .'
    }

    stage("Login") {
        withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]) {
            sh "echo ${PSW} | docker login -u ${USER} --password-stdin 127.0.1.1:8082"
            echo "Login successful"
        }
    }

    stage("Push image") {
        echo "Pushing image to the Nexus repository"
        sh "docker push 127.0.1.1:8082/react-pro:latest"
        echo "Image pushed successfully!"
    }

    stage('Deploying to Kubernetes') {
        
withKubeConfig([credentialsId: 'mukube-config']) {
 echo "logging  in k8s success"
 sh 'kubectl apply -f Secret.yaml'
 sh 'kubectl apply -f Deployment.yaml'
        }
    }
}
           
            
            
        
                    
                                                              
    

