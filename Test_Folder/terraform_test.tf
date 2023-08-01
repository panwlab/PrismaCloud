resource "my-web-server" {
    name    =   "web-server-1"
    machine_type =  "n1-standard-4"
    zone                      = "us-west2-b"
     min_cpu_platform          = "${var.machine_cpu_fw}"
  can_ip_forward            = true
  allow_stopping_for_update = true
  deletion_protection       = false
  count                     = 1 

  network_interface = {
    network = "projects/gpnr19prj0001fnd-agrolis/global/networks/outbound-public-vpc"
    #network_ip = "172.18.8.11"
    subnetwork = "projects/gpnr19prj0001fnd-agrolis/regions/us-west2/subnetworks/outbound-public-us-subnet1"
    stack_type = "IPV4_ONLY"
    subnetwork_project = "gpnr19prj0001fnd-agrolis"
    #access_config = {}
  }
}