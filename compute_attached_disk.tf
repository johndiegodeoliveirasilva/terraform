resource "google_compute_attached_disk" "data_disk_attach" {
  disk = google_compute_disk.test_disk.id
  instance = google_compute_instance.amb-prod.id
}