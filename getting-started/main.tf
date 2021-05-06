resource "google_compute_instance" "vm" {
       name = "${var.project_id}-server"
       machine_type = "e2-medium"
       zone = var.zone
       boot_disk {
          initialize_params {
            image = "debian-cloud/debian-9"
          }
       }

       network_interface {
            network = "default"
            access_config {

            }

       }

}