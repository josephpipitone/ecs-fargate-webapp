# AWS ECS Fargate Web Application Template

A reusable template for deploying containerized web applications on AWS ECS Fargate with automated CI/CD pipelines using CodePipeline and CodeBuild. This template provides a production-ready foundation that can be easily customized for various web application projects.

## Overview

This template includes everything needed to deploy a scalable, containerized web application on AWS ECS Fargate:

- **Containerization**: Docker-based deployment with Nginx
- **CI/CD Pipeline**: Automated builds and deployments via AWS CodePipeline and CodeBuild
- **Infrastructure**: Serverless container orchestration with ECS Fargate
- **Load Balancing**: Application Load Balancer for high availability
- **Container Registry**: Amazon ECR for secure image storage

## Architecture

```
GitHub → CodePipeline → CodeBuild → ECR → ECS Fargate → ALB → Internet
```

## Template Files

- `index.html`: Sample static web page (replace with your application)
- `Dockerfile`: Multi-stage Docker build configuration for optimized Nginx images
- `buildspec.yml`: CodeBuild configuration for automated container builds
- `task-definition.json`: ECS task definition template with configurable parameters
- `appspec.yml`: CodeDeploy specification for blue/green deployments
- `imagedefinitions.json`: Image metadata for deployment pipeline

## Quick Start

1. **Clone this repository**
   ```bash
   git clone <your-repo-url>
   cd ecs-fargate-webapp
   ```

2. **Customize the application**
   - Replace `index.html` with your web application
   - Update `Dockerfile` if needed for your stack
   - Modify `task-definition.json` for your container requirements

3. **Configure AWS Resources**
   - Create ECR repository
   - Set up ECS cluster and service
   - Configure Application Load Balancer
   - Create CodePipeline with GitHub integration

4. **Deploy**
   - Push changes to trigger automated deployment
   - Monitor via AWS Console or CLI

## Customization

### Application Code
Replace the sample `index.html` with your web application files. This template supports:
- Static sites (HTML/CSS/JS)
- Single-page applications (SPA)
- API backends (modify Dockerfile accordingly)

### Container Configuration
- Update `Dockerfile` for your runtime (Node.js, Python, etc.)
- Adjust `task-definition.json` for CPU/memory allocation
- Configure environment variables and secrets

### Infrastructure
- Modify `buildspec.yml` for custom build steps
- Update `appspec.yml` for deployment strategies
- Adjust ALB configuration for SSL/custom domains

## Prerequisites

- AWS CLI configured with appropriate IAM permissions
- GitHub repository with AWS CodePipeline source action
- IAM roles for ECS, CodeBuild, CodePipeline, and CodeDeploy
- Basic knowledge of Docker and AWS services

## Prerequisites

- AWS CLI configured with appropriate permissions
- GitHub repository with AWS CodePipeline connection
- IAM roles for ECS, CodeBuild, and CodePipeline

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For issues and questions:
- Check AWS documentation for ECS Fargate
- Review CodePipeline troubleshooting guides
- Open an issue in this repository