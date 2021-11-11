# CICD-KUBERNETES-GITOPS
CICD KUBERNETES CICD PIPELINE IN GITOPS
In first  step, will review an existing automated build and deployment pipeline for Kubernetes in AWS, before edit it to incorporate GitOps. the differences between the two pipelines. The setup uses a web-based integrated development environment (IDE) on an AWS EC2 instance to host a Node.js app, edit the code behind it, and push that code to AWS CodeCommit, which triggers an automated pipeline in AWS CodePipeline. AWSCodePipeline then builds and pushes a Docker image to AWS Elastic container Registry (ECR) and triggers an update of the deployed application on the host. This resembles the kind of pipeline commonly used to automate code application deployment. The setup resembles this:

 In next  step, 'll update  simple web application using the existing pipeline, in order to fully understand how it works before switching it to a GitOps implementation.
have seen a CodePipeline pipeline get triggered by a Git push to a repository and then build and deploy an application. GitOps does several things differently, however.

So far, in the simple example application, the Kubernetes app is controlled by a simple config file in the same repository as the application code and deployed with kubectl apply. After implementing GitOps with a tool called Flux, the configuration files for  Kubernetes application will be hosted in their own Git repository separate from that hosting  application code, and serve as the single source  Kubernetes configuration. Flux, the tool powering GitOps in cluster, will listen for changes to this repository and update  cluster configuration as needed. It will also listen for changes to  ECR repository, and handle the automatic deployment of our application using Kubernetes principles . Finally, it will write its own commits to the new configuration repository with updated information. 
