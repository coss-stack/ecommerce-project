pipeline {

agent any

environment {

IMAGE_NAME="dockerhubusername/ecommerce"

}

stages {

stage('Git Checkout') {

steps {

git 'https://github.com/username/ecommerce-project.git'

}

}

stage('Build Docker Image') {

steps {

sh 'docker build -t $IMAGE_NAME:$BUILD_NUMBER app/'
}

}

stage('Docker Login') {

steps {

withCredentials([usernamePassword(credentialsId: 'dockerhub',

usernameVariable: 'USER',

passwordVariable: 'PASS')]){

sh 'echo $PASS | docker login -u $USER --password-stdin'

}

}

}

stage('Push Image') {

steps {

sh 'docker push $IMAGE_NAME:$BUILD_NUMBER'

}

}

stage('Deploy to Kubernetes') {

steps {

sh 'kubectl set image deployment/ecommerce ecommerce=$IMAGE_NAME:$BUILD_NUMBER'

}

}

}

}
