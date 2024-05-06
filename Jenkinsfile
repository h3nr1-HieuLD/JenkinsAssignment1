pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                bat 'cd C:/Users/leduc/Downloads'
                bat 'docker buildx build -t asm-1:latest .' // Build image from Dockerfile
            }
        }
        stage('Run Container and Generate Report') {
            steps {
                script {
                    bat 'docker run --rm -v .:/app asm-1:latest'
                    // bat "docker exec -i asm1 powershell -ExecutionPolicy Bypass -File ./report.sh'" // Run report.sh script inside container
                }
            }
        }
        stage('Upload Artifacts') {
            steps {
                archiveArtifacts artifacts: 'output.log', followSymlinks: false
            }
        }
    }
}
