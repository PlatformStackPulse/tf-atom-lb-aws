variable "internal" {
  description = "Whether the LB is internal (true) or internet-facing (false)"
  type        = bool
  default     = false
}

variable "load_balancer_type" {
  description = "Type of load balancer (application or network)"
  type        = string
  default     = "application"
  validation {
    condition     = contains(["application", "network"], var.load_balancer_type)
    error_message = "load_balancer_type must be application or network."
  }
}

variable "security_group_ids" {
  description = "List of security group IDs (ALB only)"
  type        = list(string)
  default     = []
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
  validation {
    condition     = length(var.subnet_ids) >= 2
    error_message = "subnet_ids must contain at least 2 subnets."
  }
}

variable "enable_deletion_protection" {
  description = "Whether deletion protection is enabled"
  type        = bool
  default     = false
}
