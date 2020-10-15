resource "github_membership" "org_admin_bot" {
  username = "org-admin-bot"
  role     = "admin"
}

resource "github_membership" "team_bot" {
  username = "org-team-bot"
  role     = "member"
}