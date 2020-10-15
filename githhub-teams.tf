resource "github_team" "team3" {
  name        = "team3"
  description = "Team responsible for making magic happen"
  privacy     = "closed"
}

resource "github_team_membership" "team3" {
  team_id  = github_team.team3.id
  username = github_membership.org_admin_bot.username
  role     = "maintainer"
}

resource "github_team" "team4" {
  name        = "team4"
  description = "Team responsible for building out infrastructure elements."
  privacy     = "closed"
}

resource "github_team_membership" "team4" {
  team_id  = github_team.team4.id
  username = github_membership.team_bot.username
  role     = "maintainer"
}