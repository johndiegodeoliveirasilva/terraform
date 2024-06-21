resource "google_compute_disk" "test_disk" {
  count = var.instance_count
  name = "terraform-disk-${count.index}"
  type = "pd-standard"
  zone = var.zone
  size = var.size
}