pipeline {
    agent any
    
    tools {
      go 'go1.15.7'
    }

    stages {
        stage('Clean Workspace') {
            steps {
                sh 'rm -rf *'
            }
        }
        stage('Build Terrascan and generate test results') {
            steps {
                // clone the terrascan repository
                git branch: 'master', url: 'https://github.com/accurics/terrascan.git'

                // build terrascan
                sh "make build"   
                
                // clone the KaiMonkey repository
                git branch: 'master', url: 'https://github.com/accurics/KaiMonkey.git'
                
                // scan repo
                sh "./bin/terrascan scan -o junit-xml -d terraform/aws > terrascan.xml || true"
            }

            post {
                always {
                    junit 'terrascan.xml'
                }
            }
        }
    }
}

