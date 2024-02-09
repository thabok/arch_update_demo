pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Preparation') {
            steps {
                script {
                    powershell 'pip install -r requirements.txt'
                }
            }
        }

        stage('BTC Test') {
            steps {
                script {
                    powershell "python test/run_tests.py ${WORKSPACE}/test/profile.epp"
                }
            }
        }

        stage('Wrap Up') {
            steps {
                script {
                    archiveArtifacts 'test/swc_1.epp, test/test_report.html, test/update_report.html'
                }
            }
        }
    }

    post {
        success {
            publishHTML([
                allowMissing: true,
                reportDir: 'test',
                reportFiles: 'test_report.html, update_report.html',
                reportName: 'BTC Test Report',
                reportTitles: 'SWC Level Tests with BTC'
            ])
        }
    }

}
