variable "ibmcloud_api_key" {
  description = "The IBM Cloud platform API key needed to deploy IAM enabled resources."
  type        = string
  sensitive   = true
}

variable "powervs_zone" {
  description = "IBM Cloud data center location."
  type        = string
}

variable "powervs_workspace_guid" {
  description = "Existing GUID of the PowerVS workspace. The GUID of the service instance associated with an account."
  type        = string
}

variable "powervs_sshkey_name" {
  description = "Name of the existing PowerVS SSH public key."
  type        = string
}

variable "powervs_image_id" {
  description = "Image ID used for PowerVS instance. Run 'ibmcloud pi images' to list available images."
  type        = string
}

variable "powervs_boot_image_storage_tier" {
  description = "Storage type for server deployment; Possible values tier0, tier1 and tier3"
  type        = string
}

variable "powervs_cluster_nodes" {
  description = "Number of PowerVS instances in the cluster."
  type        = number
}

variable "powervs_cluster_name" {
  description = "Name of instance which will be created."
  type        = string
}

variable "powervs_server_type" {
  description = "Processor type e980/s922/e1080/s1022."
  type        = string
}

variable "powervs_cpu_proc_type" {
  description = "Dedicated shared or capped processors."
  type        = string
}

variable "powervs_number_of_processors" {
  description = "Number of processors."
  type        = string
}

variable "powervs_memory_size" {
  description = "Amount of memory in GB."
  type        = string
}

variable "powervs_networks" {
  description = "Existing list of private subnet ids to be attached to an instance. The first element will become the primary interface."
  type = list(
    object({
      name = string
      id   = string
      cidr = optional(string)
    })
  )
}

variable "powervs_shareable_volumes" {
  description = "Shareable volumes to be created and attached to the cluster nodes."
  type = list(object({
    name = string
    size = string
    tier = string
  }))
}

variable "powervs_dedicated_filesystem_config" {
  description = "Custom File systems to be created and attached to PowerVS instance. 'disk_size' is in GB. 'count' specify over how many storage volumes the file system will be striped. 'tier' specifies the storage tier in PowerVS workspace. 'mount' specifies the mount point on the OS."
  type = list(object({
    name  = string
    size  = string
    count = string
    tier  = string
    mount = string
  }))
}
