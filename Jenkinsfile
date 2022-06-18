
pipeline {
agent any 
tools {
    maven "maven"
  }
stages{
stage('CheckoutCode'){
  steps{
    git 'https://github.com/Ahmad-GitOps-DevOps/webapp'
}
}
stage("Build"){ 
  steps{
    common("Build")
}
}
stage("Execute SonarQube Report"){ 
  steps{
    common("SonarQube Report")
}
}
stage("Upload Artifacts Into Nexus"){ 
  steps{
    common("Upload Into Nexus")
}
}
}
}
