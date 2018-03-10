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
    network = "default"
    access_config {}
  }
  tags = ["https-server", "default-allow-ssh", "default-allow-icmp"]
	metadata {
    "block-project-ssh-keys" = "true"
    "ssh-keys" = "koooooge:${file("id_rsa.pub")}"
  }
}
