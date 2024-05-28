resource "google_compute_project_metadata" "amb-prod" {
  metadata = {
    ssh-keys = "${var.user}:${file(var.gce_ssh_pub_key_file)}"
  }
}