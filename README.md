# Devops training app
### Description of the project
This repository is created for purpose of practice with different DevOps tools. Final vision is to build a CI/CD pipeline for free and to practice various DevOps technologies. My goal is to train and practice various development processes, as I enjoy software development in my free time and a I would like to become SWE or DevOps engineer in the future. I really enjoy learning new technologies especially the part of automatization and optimatization of the development process from the commit all the way to the deployment. With this project I want to experience and use all the various technologies I learned in my free time or few things I was helping with in at my current job.

### Current state
The project simulates a CI part of pipeline. After code is submitted to the repository (commit or pull request), gitleaks checks the commits for hard-coded secrets, then pipeline checks the functionality of the application by build out the docker image. If the docker image is successfully built, Trivy scans for vulnerabilities (it is not set up to fail) and after that it is pushed to AWS EC2 container registry for a better overview and organization of container images.

Currently working on IaC and after that deploying the docker container to EC2 instance. Troubleshooting a problem as AWS wont allow me to create EC2 with terraform nor manually.


### Tasks
**Task Completed**
1. Simple flask application for simulation
2. Dockerization of the app
3. GitHub Action CI - build image
4. GitHub Action CI - push to registry
5. Added Trivy Action - scans container image for vulnerabilities (no fail is setup)
6. Added gitleaks - scans the repository for commits containing secrets (API keys, passwords, etc.)
7. Added IaC with terraform - created an EC2 instance where I will deploy the docker container

**To-do list**
- Update app with some simple content before deploying
- Creat a CD pipeline - pull and deploy the image to VM as docker container or with container orchestration (maybe K3s)
- Implement monitoring tools such prometheus/grafana, elk stack

**To-do but probably overkill**
- Deploy the image with container orchestration platform (K8s)
- Ansible/puppet/pulumi
- Helm
- ArgoCD

