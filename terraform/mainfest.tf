# Configure the GitHub Provider
provider "github" {
  # It is recommended to set the token as an environment variable (GITHUB_TOKEN)
  # rather than hardcoding it in your configuration.
  token        = var.GITHUB_TOKEN
  owner        = var.GITHUB_OWNER
}

# Variable for GitHub token
variable "GITHUB_TOKEN" {
  description = "GitHub personal access token"
  type        = string
}

# Variable for GitHub account owner
variable "GITHUB_OWNER" {
  description = "GitHub account owner"
  type        = string
}

# Create a new GitHub Repository
resource "github_repository" "repo" {
  # Name of the repository
  name        = "chatgpt"

  # Description of the repository
  description = "A new repository managed by Terraform"

  # Visibility of the repository, can be 'public' or 'private'
  visibility  = "private"

  # Set to true to enable issues for the repository
  has_issues  = true

  # Set to true to enable wiki for the repository
  has_wiki    = false
}

# Output the clone URL of the new repository
output "clone_url" {
  value = github_repository.repo.git_clone_url
}

