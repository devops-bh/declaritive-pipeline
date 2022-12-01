def docker='/var/jenkins_home/jobs/docker-workflow/workspace@script/';
def useDocker(stringOfTasks) {
    sh useDocker(docker+' '+stringOfTasks);  
}
node {
    stage('Hello') {
        useDocker('container ls');
    }
} 
