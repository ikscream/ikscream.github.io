# Configure the GitHub Provider
# This provider block configures the GitHub provider with a personal access token and the owner of the GitHub account.
# The token and owner are provided via variables for better security and modularity.
# GitHub Provider documentation: https://registry.terraform.io/providers/integrations/github/latest/docs
provider "github" {
  # Token for GitHub API authentication, recommended to be set as an environment variable for security.
  token = var.GITHUB_TOKEN

  # Owner of the GitHub account, typically the username or organization name.
  owner = var.GITHUB_OWNER
}

# Variable Declaration for GitHub Personal Access Token
# This variable is used to authenticate with the GitHub API.
# The token should be created with the necessary scopes for repository management.
# GitHub Personal Access Tokens documentation: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
variable "GITHUB_TOKEN" {
  description = "GitHub personal access token"
  type        = string
}

# Variable Declaration for GitHub Account Owner
# This variable specifies the owner of the GitHub account where the repository will be created.
# The owner can be a user or an organization.
variable "GITHUB_OWNER" {
  description = "GitHub account owner"
  type        = string
}

# Create a New GitHub Repository
# This resource block is used to create a new repository on GitHub.
# You can configure various settings like name, description, visibility, and features like issues and wikis.
# GitHub Repository documentation: https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository
resource "github_repository" "repo" {
  # Name of the repository to be created.
  name = "ikscream.github.io"

  # Description for the repository, providing context about its use or contents.
  description = "A new repository managed by Terraform"

  # Repository visibility - can be 'public' or 'private'.
  visibility = "private"

  # Boolean to enable or disable the issues feature in the repository.
  has_issues = false

  # Boolean to enable or disable the wiki feature in the repository.
  has_wiki = false
}

# Output the Clone URL of the New Repository
# This output will display the Git clone URL of the newly created repository.
# Useful for automation or providing the URL to team members.
output "clone_url" {
  # The Git clone URL of the repository created above.
  value = github_repository.repo.git_clone_url
}
