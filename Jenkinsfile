pipeline {
   environment {
     def sonarScanner = tool name: 'shasonar' , type: 'hudson.plugins.sonar.SonarRunnerInstallation'
//     imagename = "sharanyajayaram/bankdocker"
//     dockerImage = ''
//   }
  agent any
  stages {
    stage('Code checkout') {
      steps {
        git credentialsId: 'e092a5fc-520d-4b50-80ac-e75d774582f9', url: 'https://github.com/SharanyaJayaram/react-js-quick-food-delivery-website.git'
      }
    }
     stage('Code Scan') {
     steps {
       withSonarQubeEnv(installationName: 'shasonar', credentialsId: 'sonarid', envOnly: true) {
//         //withSonarQubeEnv(credentialsId: 'sonarid')  {
             sh "${sonarScanner}/bin/sonar-scanner -Dsonar.projectKey=develop -Dsonar.sources=. "
//         }
        
//     }
// }
//     stage('Testing'){
//       steps{
//         script{
//               sh "npm install"
//               sh "npm run test"
//         }
//       }
//     }
      
 

//     stage('Building image') {
//       steps{
//         script {
//           dockerImage = docker.build imagename
//         }
//       }
//     }
//     stage('Deploy Image') {
//       steps{

//           withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'dockerhubPassword', usernameVariable: 'dockerhubUser')]) {
//             sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPassword}"
//             sh 'docker push sharanyajayaram/bankdocker:latest'
//             sh "docker pull sharanyajayaram/bankdocker:latest"
//             sh "docker run -d -t -p 3000:3000 --name boschproject. sharanyajayaram/bankdocker:latest"
//           }



//       }
//     }
//     stage('kubernetes') {
//         steps {
//             node("Kubes") {
//               script{
//               echo "deployment is successful"
//                 //sh kubectl create namespace dockerr
//                 //kubectl create -f deployment.yaml
//                 //kubectl get pods -n docker
//                 //kubectl create -f service.yaml --namespace docker
//                 //kubectl get services --namespace docker"""
                
            
//               }
//             }
//         }
//     }
  }
}
