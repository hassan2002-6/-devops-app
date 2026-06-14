terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "app_repo" {
  name         = "devops-app"
  force_delete = true
}

resource "aws_ecs_cluster" "app_cluster" {
  name = "devops-app-cluster"
}