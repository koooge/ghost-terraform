provider "google" {
  credentials = "${file("account.json")}"
  project = "wannabe-engineer"
  region = "us-west1-a"
}
