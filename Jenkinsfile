pipeline{
    agent{
        label 'worker1'
    }
    tools {
        maven '3.6.3'
    }
    stages{
        stage("Pull Git Repo"){
            steps{
                echo "Pull Git Repo on node: $NODE_NAME"
                // git credentialsId: 'a39667f0-0833-4713-866b-f5a0d8e5ca05', url: 'https://github.com/leangsengk90/spring-sample.git'    
            }
        }
        stage("Build with Maven"){
            steps{
                echo "Build with Maven"
                sh 'mvn clean package' 
                 sh 'docker build -t spring-demo-img .'
            }
        }
        stage("Deploy Container"){
            steps{
                script{
                    try{
                        sh 'docker rm -f spring-demo-cont'
                    }catch(err){
                        echo "ERR:"+err;
                    }
                }
                sh 'docker run -d -p 8282:8080 --name spring-demo-cont spring-demo-img'
            }
        }
        
    }
}
