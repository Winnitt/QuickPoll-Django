pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // Pull the latest code from the GitHub repository
                git branch: 'main', url: 'https://github.com/Winnitt/QuickPoll-Django.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Install required Python packages
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Run Tests') {
            steps {
                // Run Django tests
                sh 'python manage.py test'
            }
        }
        stage('Deployment') {
            steps {
                // Deploy the application
                sh './deploy.sh'
            }
        }
    }
}
