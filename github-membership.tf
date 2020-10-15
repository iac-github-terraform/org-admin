resource "github_membership" "org_bot" {
  username = "org-bot"
  role     = "admin"
}

resource "github_membership" "team_bot" {
  username = "org-team-bot"
  role     = "member"
}