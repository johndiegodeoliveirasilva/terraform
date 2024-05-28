resource "google_compute_instance" "amb-prod" {
  name =  "terraform-instance"
  machine_type = var.machine_type
  zone = var.zone
  allow_stopping_for_update = true
  metadata_startup_script = "${file("script.sh")}"
  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  attached_disk {
    source = google_compute_disk.test_disk.self_link
    device_name = google_compute_disk.test_disk.name
  }

  network_interface {
    network = "default"
    access_config {
    }
  }


  provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }

  connection {
    type = "ssh"
    user = var.user
    host = self.network_interface.0.access_config.0.nat_ip
    private_key = file(var.gce_ssh_private_key_file)
    timeout = "4m"
  }
 
}