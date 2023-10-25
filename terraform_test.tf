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
resource "google_compute_instance" "MyGcpInstance" {
  name                      = "ofw-uw2-1"    
  machine_type              = "n1-standard-4"
  zone                      = "us-west2-b"
  min_cpu_platform          = "${var.machine_cpu_fw}"
  allow_stopping_for_update = true
  deletion_protection       = false
  count                     = 1 
 
  tags = ["fw-ilb-hc", "palo-alto-for-management","pa-fwrule-outbound-allowed-subnets"]
  // Adding METADATA Key Value pairs to VM-Series GCE instance
  metadata = {
    mgmt-interface-swap = "enable"
    //block-project-ssh-keys = true
    ssh-keys            = "${var.my_key}"
    panorama-server="192.168.250.5"
    dns-primary="169.254.169.254"
    hostname="ofw-1"
    auth-key="_AQ__eUZInq7JiDuw9Ci4hC6TnFnTUl"
    dgname="pa-vm-outbound"
    tplname="pa-vm-outbound_stack"
    plugin-op-commands="panorama-licensing-mode-on"
    type = "dhcp-client"
  }

  network_interface {
    network = "projects/gpnr19prj0001fnd-agrolis/global/networks/outbound-public-vpc"
    #network_ip = "172.18.8.11"
    subnetwork = "projects/gpnr19prj0001fnd-agrolis/regions/us-west2/subnetworks/outbound-public-us-subnet1"
    stack_type = "IPV4_ONLY"
    subnetwork_project = "gpnr19prj0001fnd-agrolis"
    #access_config = {}
  }

  network_interface {
    network = "projects/gpnr19prj0001fnd-agrolis/global/networks/management-vpc"
    #network_ip = "172.19.8.12"
    subnetwork = "projects/gpnr19prj0001fnd-agrolis/regions/us-west2/subnetworks/management-us-subnet1"
    stack_type = "IPV4_ONLY"
    subnetwork_project = "gpnr19prj0001fnd-agrolis"
    #access_config = {}
  }


  network_interface {
    network = "projects/gpnr19prj0001fnd-agrolis/global/networks/outbound-private-vpc"
    #network_ip = "172.20.8.10"
    subnetwork = "projects/gpnr19prj0001fnd-agrolis/regions/us-west2/subnetworks/outbound-private-us-subnet1"
    stack_type = "IPV4_ONLY"
    subnetwork_project = "gpnr19prj0001fnd-agrolis"
    #access_config = {}
  }


  #service_account {
      #email = "626386043180-compute@developer.gserviceaccount.com"
      #email = "428364952881-compute@developer.gserviceaccount.com"
      #scopes = ["cloud-platform"]
  #}

  boot_disk {
    //disk_encryption_key_raw = "<encryption key>"
    initialize_params {
      image = "${var.image_fw}"
      type = "pd-ssd"
    }
  }
  metadata = {
    block-project-ssh-keys = true
  }
}