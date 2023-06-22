node {
    stage("init") {
        echo "building the application"
    }

    stage("build") {
        echo "building the application 2"
        git branch: 'main', url: 'https://github.com/AyoushmanGemini/Intern_assign1.git'
        sh 'docker build -t 127.0.1.1:8082/react-pro:${BUILD_NUMBER} .'
        echo "docker build successful"
        
        withCredentials([usernamePassword(credentialsId: 'nexus', passwordVariable: 'PSW', usernameVariable: 'USER')]) {
            sh " docker login -u admin -p admin123 http://localhost:8082/"
            echo "Login successful"
            sh "docker tag react-pro:${BUILD_NUMBER} 192.168.36.109:8082/react-pro:${BUILD_NUMBER}"
            
            sh "docker push 192.168.36.109:8082/react-pro:${BUILD_NUMBER}"
        }
    }
}
