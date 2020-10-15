# the terraform resource for the repository
resource "github_repository" "org_admin" {
  name        = "org-admin"
  description = "Code that controls the overall organisation and base set up"

  private                = false
  has_issues             = true
  has_wiki               = false
  allow_merge_commit     = true
  allow_squash_merge     = false
  allow_rebase_merge     = false
  auto_init              = false
  delete_branch_on_merge = true
  topics                 = ["config", "terraform", "admin"]
  default_branch         = "main"
}

# Set up baseline configs for the repo
/*resource "github_branch_protection" "org_admin" {
  repository = github_repository.org_admin.name
  branch     = "main"

  required_status_checks {
    # require up to date before merging
    strict = false*/
    // not required as would create unndecessary dependency on a folder that may not have changed
    //    contexts = ["atlas/mononoke/github-admin",
    //    "atlas/mononoke/terraform-cloud-admin", ]
 /* }
  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = false
  }
}*/

/*resource "github_team_repository" "org_admin" {
  team_id    = github_team.team3.id
  repository = github_repository.org_admin.name
  permission = "admin"
}

resource "github_repository" "events_repo" {
  name        = "events-server"
  description = "Repo that contains back end code for events builder"

  private                = false
  has_issues             = true
  has_wiki               = false
  allow_merge_commit     = true
  allow_squash_merge     = false
  allow_rebase_merge     = false
  auto_init              = true
  delete_branch_on_merge = true
  gitignore_template     = "Terraform"
  license_template       = "mit"
  topics                 = ["events", "java", "spring", "spring-boot"]
  default_branch         = "main"
}

# Set up baseline configs for the repo
resource "github_branch_protection" "events_repo" {
  repository = github_repository.events_repo.name
  branch     = "main"
//
//  required_pull_request_reviews {
//    dismiss_stale_reviews      = true
//    require_code_owner_reviews = false
//  }
}

resource "github_team_repository" "events_repo" {
  team_id    = github_team.team4.id
  repository = github_repository.events_repo.name
  permission = "admin"
}

resource "github_team_repository" "events_repo_admin" {
  team_id    = github_team.team3.id
  repository = github_repository.events_repo.name
  permission = "admin"
}*/