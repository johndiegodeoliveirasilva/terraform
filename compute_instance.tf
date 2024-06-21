resource "google_compute_instance" "amb-prod" {
  name =  "terraform-instance"
  machine_type = var.machine_type
  zone = var.zone
  allow_stopping_for_update = true
  metadata_startup_script = file(var.script_file)
  boot_disk {
    initialize_params {
      image = var.os_image
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  provisioner "file" {
    source = var.script_file
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