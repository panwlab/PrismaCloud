provider "google"{
 project = "gpnr19prj0001fnd-agrolis"

}

variable "my_gcp_project" {
  default = "foundation-service-prj"
}

variable "region" {
  default = "asia-east1"
}

variable "zone" {
  default = "asia-east1-b"
}

variable "public_key" {
  #default = "Your_Public_Key_in_RSA_Format"
  default = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+aWI/bssvrZbaasw/Q6R5bFJNYEsgRiN2Qw+2xR2fnwTLd4LgItIMhVrGaDcRxDUzOq3+eKqmGml3RC5RjYwIK9LU3gRiPvEc2kCFVdcl0jbxSLf4asgDNR4PBkUYLc1GUfNOUIhIM1msjQTYmF0b5K4S+j60v0vlMCsvKo1ZQ5BEZ66s3lQg9fv+3W8WPTFglFrklHqalMnhWWlGs6DVoFzDGtzDSGm9cySeSpyI+04NHRlIFSxVRbY35ryJfWssea9B8rMcxAo0lC6WBzxtglKO9IP0sGSs90vfQ2iMR8+9q4APjJ2aMVQwvM3fIm14XL7o+npsrJF9YTNG2mer"
}

variable "my_key" {
  #default = "Your_Public_Key_in_RSA_Format"
  default = "admin:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+aWI/bssvrZbaasw/Q6R5bFJNYEsgRiN2Qw+2xR2fnwTLd4LgItIMhVrGaDcRxDUzOq3+eKqmGml3RC5RjYwIK9LU3gRiPvEc2kCFVdcl0jbxSLf4asgDNR4PBkUYLc1GUfNOUIhIM1msjQTYmF0b5K4S+j60v0vlMCsvKo1ZQ5BEZ66s3lQg9fv+3W8WPTFglFrklHqalMnhWWlGs6DVoFzDGtzDSGm9cySeSpyI+04NHRlIFSxVRbY35ryJfWssea9B8rMcxAo0lC6WBzxtglKO9IP0sGSs90vfQ2iMR8+9q4APjJ2aMVQwvM3fIm14XL7o+npsrJF9YTNG2mer"
}
// VM-Series Firewall Variables 

variable "firewall_name" {
  default = "pa-terraform"
}

variable "bootstrap_bucket_fw" {
  default = "terraform-pa"
}

variable "scopes_fw" {
  default = ["https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_auth_cloud.useraccounts.readonly&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=dFyZRyvY8kmFQIz8Bqw0CfEd_K-YURdRSx3-JzPvRT0&e= ",
    "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_auth_devstorage.read-5Fonly&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=wc2lzF3yiRPey3i4lXvZUHvCm35gs8WV3xIs33L8KZQ&e= ",
    "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_auth_logging.write&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=0cgNbM_-v2apnCBPJcqr7BFwWYFKsdiGrCXyYHLgI3w&e= ",
    "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_auth_monitoring.write&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=jVgHxLeB51-7olKs8yNNAVXjAJzAgDMefzneO4yPVk4&e= ",
  ]
}

variable "image_fw" {
  # default = "Your_VM_Series_Image"
  
  # /Cloud Launcher API Calls to images/
  # default = "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_compute_v1_projects_paloaltonetworksgcp-2Dpublic_global_images_vmseries-2Dbyol-2D810&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=_Q7YB0T0ikGPEAEoeW5FbfFLdbckYeyJ1VM7alYzK50&e= "
  # default = "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_compute_v1_projects_paloaltonetworksgcp-2Dpublic_global_images_vmseries-2Dbundle2-2D810&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=0zb377LCK2zrK-MUn4KON3H3d9kl312MZAmUDoBhnfI&e= "
  # default = "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_compute_v1_projects_paloaltonetworksgcp-2Dpublic_global_images_vmseries-2Dbundle1-2D810&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=gDemEsKE3XTJEMe2VkwcO2ielkpIgex2cIKwYXbWS3s&e= "

  default = "https://urldefense.proofpoint.com/v2/url?u=https-3A__www.googleapis.com_compute_v1_projects_paloaltonetworksgcp-2Dpublic_global_images_vmseries-2Dflex-2Dbyol-2D1014&d=DwIGAg&c=V9IgWpI5PvzTw83UyHGVSoW3Uc1MFWe5J8PTfkrzVSo&r=aGqdGvUb-vFJq9z32zXBdUWF8w6ife-S6zGddObui3c&m=oXoHRCNswuCYIazwfCo0ZVdifF7UkkdkEvHJP70zDpWAjVK6dCqr40A_1pQTu0_G&s=MLeEtCgEM2ZltB_NU1N37pie_7dguVX-pCczmgEyqAc&e= "

}

variable "machine_type_fw" {
  default = "n1-standard-8"
}

variable "machine_cpu_fw" {
  default = "Intel Skylake"
}

variable "login_password" {
  default = "P@ssw0rd"
}

variable "interface_0_name" {
  default = "untrust"
}

variable "interface_1_name" {
  default = "management"
}

variable "interface_2_name" {
  default = "trust-internal"
}

variable "interface_3_name" {
 default = "trust-onprem"
}
