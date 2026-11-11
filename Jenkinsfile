pipeline {
  agent any
  tools { nodejs 'NodeJS-22' }
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Run Test') {
      steps {
         nodejs(nodeJSInstallationName: 'NodeJS-22') {
        sh 'node -v' // Verification step
        sh 'npm install'
        sh 'npx vitest run'
      }
    }
    stage('Build') {
      steps { sh 'npx vite build' }
    }
    stage('Archive Artifact') {
      steps {
        sh "tar -czf react-app-${BUILD_NUMBER}.tar.gz dist Dockerfile"
        archiveArtifacts artifacts: "react-app-${BUILD_NUMBER}.tar.gz", fingerprint: true
      }
    }
  }
}