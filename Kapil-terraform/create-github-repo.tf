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
    token = "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"
}

# Create Github repository
resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  visibility = "public"
}