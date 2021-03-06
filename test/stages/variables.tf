variable "region"{
  type = string
  default ="ap-south-1" 
  description = "Please set the region where the resouces to be created "
}

variable "access_key"{
  type = string
}
variable "secret_key"{
  type = string
}

variable "cloud_provider" {
  type = string
  default = "aws"
  
}

variable "resource_group_name" {
  type        = string
  description = "Existing resource group where the IKS cluster will be provisioned."
  default     = "default"
}


variable "provision" {
  type        = bool
  description = "Flag indicating that the instance should be provisioned. If false then an existing instance will be looked up"
  default     = true
}

variable "name_prefix" {
  type        = string
  description = "Prefix to be added to the names of resources which are being provisioned"
  default     = "swe"
}

variable "instance_tenancy" {
  type        = string
  description = "Instance is shared / dedicated, etc. #[default, dedicated, host]"
  default     = "default"
}

variable "internal_cidr" {  
  type        = string
  description = "The cidr range of the internal network.Either provide manually or chose from AWS IPAM poolsß"
  default     = "10.0.0.0/16"
}
variable "igw_name" {
  type        = string
  description = "The name of the existing VPC instance"
  default     = ""
}