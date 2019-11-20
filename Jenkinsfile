pipeline {
	environment {
		registry = "vijay1704/python-repo"
		registryCredential = 'docker'
	}
	
	agent any
	stages {
		stage('Checkout') {
			git changelog: false, poll: false, url: 'https://github.com/vijay1704/hello-world.git'
		}
		stage('Build') {
			steps{
				script {
					docker.build registry + ":$BUILD_NUMBER"
				}
			}
		}
			
	}
}
