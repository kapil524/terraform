terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
# Configure the GitHub Provider
provider "github" {
    token = "GIT-HUB-TOKEN"
}

# Create Github repository
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  visibility = "public"
}