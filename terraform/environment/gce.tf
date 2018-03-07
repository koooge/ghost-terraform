resource "google_compute_instance" "wannabe-engineer" {
  name = "wannabe-engineer"
  machine_type = "f1-micro"
  zone = "us-west1-a"
  boot_disk {
    initialize_params {
      size = "30"
      type = "pd-standard"
      image = "ubuntu-os-cloud/ubuntu-1604-xenial-v20180306"
    }
  }
  network_interface {
    subnetwork = "default"
  }
  project = "wannabe-engineer"
  tags = ["https-server"]
}
