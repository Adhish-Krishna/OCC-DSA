pipeline {
    agent any

    environment {
        REPO_URL = "https://github.com/Adhish-Krishna/OCC-DSA"
    }

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'master', url: "${REPO_URL}"
            }
        }

        stage('Install Python') {
            steps {
                sh '''
                    # Check if python3 exists
                    if ! command -v python3 &> /dev/null
                    then
                        echo "Python3 not found. Installing..."
                        sudo apt update
                        sudo apt install -y python3 python3-pip
                    else
                        echo "Python3 already installed"
                    fi
                '''
            }
        }

        stage('Run Python Script') {
            steps {
                sh '''
                    python3 --version
                    python3 example.py
                '''
            }
        }
    }
}