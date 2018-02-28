node('linux') {
  checkout scm
  stage('Build image') {
    sh "docker build ."
  }
}