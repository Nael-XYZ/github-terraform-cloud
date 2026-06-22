terraform {
  cloud {
    organization = "my-org"
    workspaces {
      name = "production"
    }
  }
}

# Policy check
resource "tfe_sentinel_policy" "enforce_tags" {
  name     = "enforce-tags"
  policy   = file("policies/enforce-tags.sentinel.csv")
  enforce  = "mandatory"
  kind     = "sentinel"
}
