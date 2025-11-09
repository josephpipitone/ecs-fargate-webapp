# Hello World Web App on AWS ECS Fargate

This is a simple "Hello World" web application deployed on AWS ECS Fargate using CodePipeline and CodeBuild.

## Architecture

- **Frontend**: Nginx serving a static HTML page
- **Containerization**: Docker
- **CI/CD**: AWS CodePipeline with CodeBuild
- **Deployment**: AWS ECS Fargate
- **Load Balancing**: Application Load Balancer
- **Container Registry**: Amazon ECR

## Files

- `index.html`: The static HTML page
- `Dockerfile`: Docker configuration for building the Nginx image
- `buildspec.yml`: AWS CodeBuild specification
- `task-definition.json`: ECS task definition
- `appspec.yml`: AWS CodeDeploy specification for ECS

## Deployment

The application is automatically deployed through AWS CodePipeline when changes are pushed to the GitHub repository.

## AWS Resources

- ECR Repository: `740203489195.dkr.ecr.us-east-1.amazonaws.com/pipitone`
- ECS Cluster: To be created
- ECS Service: To be created
- Application Load Balancer: To be created
- CodePipeline: To be created
- CodeBuild Project: To be created

## Prerequisites

- AWS CLI configured with appropriate permissions
- GitHub repository with AWS CodePipeline connection
- IAM roles for ECS, CodeBuild, and CodePipeline

## Next Steps

1. Create the AWS resources (ECS cluster, ALB, CodePipeline, etc.)
2. Configure IAM roles and policies
3. Push this code to GitHub to trigger the first deployment