variable "project" {
  default = "cloud-deploy-424319"
}
variable "credentials_file" {
  default = "credentials.json"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c" 
}

variable "machine_type" {
  default = "f1-micro"
}

variable "os_image" {
  default = "ubuntu-os-cloud/ubuntu-2204-lts"
}


variable "gce_ssh_private_key_file" {
  default = "~/.ssh/gcp_key"
}

variable "gce_ssh_pub_key_file" {
  default = "~/.ssh/gcp_key.pub"
}
variable "user" {
  default = "johnoliveirasilva9"
}

variable "size" {
  default = 20
}

variable "script_file" {
  default = "scripts/script.sh"
  
}