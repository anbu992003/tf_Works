resource "google_compute_instance" "webvm" {
        name = "webvm-01"
        machine_type = "e2-small"
        zone         = "us-central1-a"
        boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

network_interface {
    network = "default"
  }

}
