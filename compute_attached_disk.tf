resource "google_compute_attached_disk" "data_disk_attach" {
  count = var.instance_count
  disk = google_compute_disk.test_disk[count.index].id
  instance = google_compute_instance.amb-prod[count.index].id
}