resource "google_compute_disk" "test_disk" {
  name = "terraform-disk"
  type = "pd-standard"
  zone = var.zone
  size = var.size
}