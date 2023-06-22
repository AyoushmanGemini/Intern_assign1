node {
    stage("init") {
        echo "building the application"
    }

    stage("build") {
        echo "building the application 2"
        git branch: 'main', url: 'https://github.com/AyoushmanGemini/Intern_assign1.git'
        sh 'docker build -t http://localhost:8082/sanskriti-portfolio:${BUILD_NUMBER} .'
        echo "docker build successful"
        
        withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]) {
            sh "echo ${PSW} | docker login -u ${USER} --password-stdin http://localhost:8082/"
            echo "Login successful"
            
            sh 'docker push http://localhost:8082/react-pro:${BUILD_NUMBER}'
        }
    }
}
