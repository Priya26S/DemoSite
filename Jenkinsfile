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
			 sh 'docker build -t ps2698/demosite:${BUILD_NUMBER} .'
		}
        }	

	stage('Login to Docker Hub'){
		steps {
			sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
		}
        }

	stage('Push Image'){
		steps{
			sh 'docker push ps2698/demosite:$BUILD_NUMBER'
		}
        }

	stage('Building Application'){
		steps{
		        sh '''
                        docker stop demosite
			docker run --rm -d -p 3000:3000 --name demosite ps2698/demosite:$BUILD_NUMBER
                    '''
		}   
        }	
    }
}
