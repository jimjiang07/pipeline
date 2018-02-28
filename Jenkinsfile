parameters {
  string(name: "ARTIFACT_NAME", defaultValue: "NONE", description: "Docker Tag for Deployment"),
  choice(name: "APP_ENVIRONMENT", choices: "NONE\nSTAGE\nPRODUCTION")
}

node('linux') {
  checkout scm
  stage('Build image') {
    sh "docker build ."
  }
}