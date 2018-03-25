pipeline {
  agent any
  options {
    disableConcurrentBuilds()
  }
  triggers {
      pollSCM('*/15 * * * *')
  }
  stages {
    stage('update') {
      when {
        branch 'master'
      }
      steps {
        checkout scm
        sh "echo -e \"[+] Updating Jenkins jobs!\n\n\n\""
        sh "sleep 5"
        sh "bash jenkins/update.sh"
      }
    }
  }
}
