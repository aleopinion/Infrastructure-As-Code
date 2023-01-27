# Ouputing The Dev Instance ID
output "output-dev-instance-id" {
    description = "The Unique Instance ID of Dev Instance"
    value       = google_compute_instance.opinion-dev.instance_id
}

# Ouputing The Dev Internal IP
output "output-dev-internal-ip" {
    description = "The Unique Internal IP of Dev Instance"
    value       = google_compute_instance.opinion-dev.network_interface.0.network_ip
}

# Ouputing The Dev External IP
output "output-dev-external-ip" {
    description = "The Unique External IP of Dev Instance"
    value       = google_compute_instance.opinion-dev.network_interface.0.access_config.0.nat_ip
    
}

#=========================================================================================================
# Ouputing The Dev Machine Type
output "output-dev-machine-type" {
    description = "The Machine type"
    value       = google_compute_instance.opinion-dev.machine_type
    
}

# Ouputing The Dev Name
output "output-dev-vm-name" {
    description = "The VM Name"
    value       = google_compute_instance.opinion-dev.name
    
}
# Ouputing The Boot Disk
output "output-dev-vm-disk" {
    description = "The Dev VM Boot Disk"
    value       = google_compute_instance.opinion-dev.boot_disk
    sensitive   = true
    
}

# Ouputing The Boot Disk
output "output-dev-project" {
    description = "The Dev Project"
    value       = google_compute_instance.opinion-dev.project
    
}



# Ouputing The Netwaork Details of The Dev VM
/*output "output-dev-network-details" {
    description = "The Network Details  of Dev Instance"
    value       = google_compute_instance.opinion-dev.network_interface
}*/

/*# Ouputing The Network of The Dev VM
output "output-dev-external-ip" {
    description = "The Unique External IP of Dev Instance"
    value       = google_compute_instance.opinion-dev.network_interface.0.network
}*/