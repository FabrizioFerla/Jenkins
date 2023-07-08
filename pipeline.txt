pipeline {
    agent any
    tools{
        maven 'maven_3_9_3'
        'org.jenkinsci.plugins.docker.commons.tools.DockerTool' 'docker'

    }
    stages {
        stage('Build Maven') {
            steps {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/FabrizioFerla/Jenkins.git']])
             sh 'mvn clean install'
            }

        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t jenkinsimage .'
                    sh 'docker run -it -d --name="jenkinsdocker" -p 8081:8081 jenkinsimage'
                }
            }
        }
    }
}