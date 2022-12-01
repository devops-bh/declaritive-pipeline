node {
    stage('Hello') {
        def docker='/var/jenkins_home/jobs/docker-workflow/workspace@script/';
        def useDocker(stringOfTasks) {
            sh useDocker(docker+' '+stringOfTasks);  
        }
        useDocker('container ls');
    }
} 
