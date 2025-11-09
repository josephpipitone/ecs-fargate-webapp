# AWS ECS Fargate CI/CD Template

A reusable template for deploying containerized applications on AWS ECS Fargate with automated CI/CD pipelines using CodePipeline and CodeBuild. This template eliminates the need for EC2 instances as Docker build servers, providing a cost-effective, serverless build and deployment solution that can be adapted for various application types.

## Overview

This template provides a complete serverless CI/CD pipeline for containerized applications on AWS, featuring:

- **Cost-Effective Builds**: Uses CodeBuild instead of EC2 instances for Docker image builds
- **Automated Pipeline**: Full CI/CD with CodePipeline, CodeBuild, and CodeDeploy
- **Serverless Infrastructure**: ECS Fargate for container orchestration without server management
- **Production-Ready**: Includes load balancing, blue/green deployments, and monitoring
- **Flexible**: Adaptable for web apps, APIs, or any containerized workload

## Architecture

```
GitHub → CodePipeline → CodeBuild → ECR → ECS Fargate → ALB → Internet
```

## Template Files

- `index.html`: Placeholder static web page for testing the deployment pipeline
- `Dockerfile`: Multi-stage Docker build configuration for optimized container images
- `buildspec.yml`: CodeBuild specification for automated Docker builds and pushes
- `task-definition.json`: ECS task definition template with configurable parameters
- `appspec.yml`: CodeDeploy specification for blue/green deployment strategy
- `imagedefinitions.json`: Image metadata output for pipeline integration

## Quick Start

1. **Clone this repository**
   ```bash
   git clone <your-repo-url>
   cd ecs-fargate-webapp
   ```

2. **Customize the pipeline**
   - Update `Dockerfile` for your application stack (Node.js, Python, etc.)
   - Modify `task-definition.json` for CPU/memory and container requirements
   - Adjust `buildspec.yml` for custom build steps if needed

3. **Configure AWS Resources**
   - Create ECR repository for container images
   - Set up ECS cluster and Fargate service
   - Configure Application Load Balancer
   - Create CodePipeline with GitHub source integration

4. **Deploy**
   - Push code changes to trigger automated build and deployment
   - Monitor deployment status in AWS Console

## Key Benefits

- **No Build Servers**: Eliminates EC2 costs by using CodeBuild for container builds
- **Serverless**: Fargate handles container orchestration without managing servers
- **Automated**: Complete CI/CD pipeline with blue/green deployments
- **Scalable**: Auto-scaling ECS services with load balancer integration
- **Secure**: IAM roles, VPC networking, and ECR private registries

## Customization

### Container Configuration
- Modify `Dockerfile` for your application runtime and dependencies
- Update `task-definition.json` for resource allocation and environment variables
- Configure health checks and logging in the task definition

### Build Pipeline
- Customize `buildspec.yml` for multi-stage builds, testing, or artifact generation
- Add security scanning or performance testing steps
- Integrate with additional AWS services (e.g., CloudWatch, X-Ray)

### Deployment Strategy
- Adjust `appspec.yml` for canary or linear deployment patterns
- Configure traffic shifting and rollback policies
- Set up monitoring and alerting for deployment events

## Prerequisites

- AWS CLI configured with appropriate IAM permissions
- GitHub repository with AWS CodePipeline source action configured
- IAM roles for ECS, CodeBuild, CodePipeline, and CodeDeploy
- Basic knowledge of Docker, containers, and AWS services

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