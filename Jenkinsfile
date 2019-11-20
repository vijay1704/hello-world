pipeline {
	environment {
		registry = "vijay1704/python-repo"
		registryCredential = 'docker'
		dockerImage = ''
	}
	
	agent any
	stages {
		stage('Build') {
			steps{
				script {
					dockerImage = docker.build registry + ":$BUILD_NUMBER"
				}
			}
		}
		stage('Deploy') {
			steps{    
				script {
					docker.withRegistry( '', registryCredential ) {
					dockerImage.push()
					}
				}
			}
		}
		stage('Run') {
			steps {
				sh "docker rmi $registry:$BUILD_NUMBER"
				sh label: '', script: 'docker run -p 5000:5000 vijay1704/python-repo:${BUILD_NUMBER}'
			}
		}
	}
}
