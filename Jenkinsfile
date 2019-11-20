pipeline {
	agent any
	stages {
		stage ('Checkout') {
			git changelog: false, poll: false, url: 'https://github.com/vijay1704/hello-world.git'
		}
		stage ('Build) {
			sh label: '', script: 'docker build -t vijay1704/python-repo:${BUILD_NUMBER} .'
		}
		stage ('Push') {
			sh label: '', docker push vijay1704/python-repo:${BUILD_NUMBER}'
		}
		stage ('Pull') {
			sh label: '', docker pull vijay1704/python-repo:${BUILD_NUMBER}'
		}
		stage ('Run') {
			sh label: '', docker run -p 5000:5000 vijay1704/python-repo:${BUILD_NUMBER}'
		}
	}
}
