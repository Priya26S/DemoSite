pipeline {
    agent any
	
    stages {
        stage('SCM Checkout') {
            steps {
                 git branch: 'main', credentialsId: 'jk-gh-tk', url: 'https://github.com/Priya26S/DemoSite.git'
            }
        }
    }	
}
