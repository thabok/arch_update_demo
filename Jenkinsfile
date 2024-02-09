pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                script {
                    bat 'pip install -r requirements.txt'
                }
            }
        }

        stage('BTC Test') {
            steps {
                script {
                    bat "python test/run_tests.py ${WORKSPACE}/test/profile.epp"
                }
            }
        }

        stage('Wrap Up') {
            steps {
                script {
                    archiveArtifacts 'test/profile.epp'

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
    }

}
