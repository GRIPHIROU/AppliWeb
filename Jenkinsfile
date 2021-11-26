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
                    junit 'C:/formationmaven/TPs/TP3/monappli/monappli-service/target/surefire-reports/*.xml'
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