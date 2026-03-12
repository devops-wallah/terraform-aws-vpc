variable "cidr_block" {
  description = "The VPC CIDR range"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for vpc"
  type        = map(string)
  default     = null
}

variable "subnet_cidr_block" {
  description = "The cidr blocks of subnet"
  type = list(string)
  default = null
}