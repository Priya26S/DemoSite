pipeline {
    agent any
    environment {
	    DOCKERHUB_CREDENTIALS = credentials('jk-dh-tk')
    }
	
    stages {
        stage('SCM Checkout') {
            steps {
                 git branch: 'main', credentialsId: 'jk-gh-tk', url: 'https://github.com/Priya26S/DemoSite.git'
            }
        }

	stage('Build Docker Image'){
		steps {
			sh 'docker build -t priya26s/demosite:${BUILD_NUMBER} .'
		}
	
        }	

	stage('Login to Docker Hub'){
		steps {
			sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		}
	
        }
   }
}
