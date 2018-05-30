variable "enabled" {
  type        = "string"
  default     = true
  description = "To enable this module"
}

variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "service" {
  type        = "string"
  description = "The name of the service"
}

variable "rds_name" {
  type        = "string"
  description = "The name of the RDS"
}

variable "environment" {
  type        = "string"
  default     = "*"
  description = "The name of the environment"
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when monitor triggered"
}

variable "renotify_interval" {
  type        = "string"
  default     = "0"
  description = "Time interval in minutes which escalation_message will be sent when monitor is triggered"
}

variable "notify_audit" {
  type        = "string"
  default     = false
  description = "Whether any configuration changes should be notified"
}
