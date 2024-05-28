resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = "default"
  description = "Allow SSH from the web to the web"

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]
  }
  source_ranges = [ "0.0.0.0/0" ]
  source_tags = ["web"]
}
