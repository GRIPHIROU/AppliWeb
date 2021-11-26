// Declarative //
pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				echo 'Building..'
			}
			post {
                success {
                    junit 'monappli/monappli-domaine/target/surefire-reports/*.xml'
                        }
                 }
		}
		stage('Test') {
			steps {
				echo 'Testing..'
			}
		}
		stage('Deploy') {
			steps {
				echo 'Deploying....'
			}
		}
	}
}