terraform {
  backend "gcs" {
    bucket = "wannabe-engineer-terraform-state"
    credentials = "account.json"
    prefix = "terraform/state"
  }
}
