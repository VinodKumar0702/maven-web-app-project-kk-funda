node{
			  def m2path="/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/maven-3.9.11"
				
				try{
				  stage("Git Checkout"){
					echo "clone success"
					git branch: 'development', credentialsId: '68ced42b-5b7e-4e4c-a56f-1c1936146a26', url: 'https://github.com/VinodKumar0702/maven-web-app-project-kk-funda.git'
				  }
				  stage("Build Checkout"){
					sh "${m2path}/bin/mvn clean package"
					echo "Build checkout sucessfull"
				  }
				  /* stage("Sonar Qube"){
					echo "Sonar qube completed the code check"
				  }
				  stage("Nexus checkout"){
					echo "artifact backup success"
				  }*/
				  stage("Tomcat Deployment"){
					echo "Deployment success to tomcat"
					 sh """
			
						curl -u vilu_vihaan:Vilohit_123\
						--upload-file /var/lib/jenkins/workspace/scripted-PL/target/maven-web-application.war\
						"http://13.235.73.238/:8080/manager/text/deploy?path=/maven-web-application&update=true"
						
					   """
				  }
				
				}
				catch(e){
				  echo "code successfully deployed"
				  throw e
				}
				finally {
					echo "success or failure final block will execute"
				}
			}
