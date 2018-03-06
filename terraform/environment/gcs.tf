resource "google_storage_bucket" "terraform-state" {
  name = "wannabe-engineer-terraform-state"
  location = "us-west1"
  storage_class = "REGIONAL"
}
