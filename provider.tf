# Configure the GitHub Provider
provider "github" {
  version      = "~> 2.2"
  organization = "iac-github-terraform"
  # Set GITHUB_TOKEN as an environment variable
}