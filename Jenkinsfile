pipeline {
    agent any
    stage(name: 'Build') {
        steps {
            echo 'Building..'
            sh 'docker build -t test .'
        }
    }
    stage(name: 'Test') {
        steps {
            echo 'Testing..'
        }
    }
    stage(name: 'Deploy') {
        steps {
            echo 'docker run -d -p 8080:8080 test'
        }
    }
}