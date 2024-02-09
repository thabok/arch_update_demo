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
                    archiveArtifacts 'test/swc_1.epp'
                }
            }
        }
    }

    post {
        success {
            publishHTML([
                allowMissing: false,
                alwaysLinkToLastBuild: false,
                includes: '**/*.html',
                keepAll: false,
                reportDir: 'test',
                reportFiles: 'test_report.html, update_report.html',
                reportName: 'BTC Test Reports',
                reportTitles: 'Test Report, Update Report',
            ])
        }
    }

}
