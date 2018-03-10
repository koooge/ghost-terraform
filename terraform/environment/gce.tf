resource "google_compute_address" "wannabe-engineer" {
  name = "wannabe-engineer"
  region = "us-west1"
}

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
    access_config {
      nat_ip = "${google_compute_address.wannabe-engineer.address}"
    }
  }
  tags = ["https-server"]
	metadata {
    "block-project-ssh-keys" = "true"
    "ssh-keys" = "${file("id_rsa.pub")}"
  }
}
