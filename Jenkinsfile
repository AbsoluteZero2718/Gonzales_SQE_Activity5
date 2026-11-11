pipeline {
  agent any
  tools { nodejs 'NodeJS' }
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Run Test') {
      steps {
        sh 'npm install'
        sh 'npm test -- --watchAll=false'
      }
    }
    stage('Build') {
      steps { sh 'npm run build' }
    }
    stage('Archive Artifact') {
      steps {
        sh "tar -czf react-app-${14}.tar.gz dist Dockerfile"
        archiveArtifacts artifacts: "react-app-${14}.tar.gz", fingerprint: true
      }
    }
  }
}