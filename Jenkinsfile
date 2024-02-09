pipeline {
    agent any

    stages {
        stage('Checkout repo content') {
            steps {
                script {
                    checkout scm
                }
            }
        }

        stage('Ensure required python packages') {
            steps {
                script {
                    powershell 'pip install -r requirements.txt'
                }
            }
        }

        stage('Run test workflow') {
            steps {
                script {
                    powershell "python test/run_tests.py ${WORKSPACE}/test/profile.epp"
                }
            }
        }

        stage('Archive test results') {
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
