terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "Andromeda_Cloud"

		workspaces {
			name = "AWS_cloud"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}