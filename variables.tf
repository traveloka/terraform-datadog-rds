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

variable "tags" {
  type        = "list"
  default     = []
  description = "Additional tags for monitors"
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when both alert and warning are triggered"
}

variable "alert_recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when only alert is triggered"
}

variable "warning_recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when only warning is triggered"
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

variable "cpu_usage_thresholds" {
  type = "map"

  default = {
    critical = 70
    warning  = 50
  }

  description = "The warning and critical thresholds for CPU Usage Monitoring"
}

variable "cpu_usage_message" {
  type        = "string"
  default     = ""
  description = "The message when CPU Usage Monitor triggered"
}

variable "cpu_usage_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when CPU Usage Monitor isn't resolved for given time"
}

variable "free_storage_percentage_thresholds" {
  type = "map"

  default = {
    critical = 70
    warning  = 50
  }

  description = "The warning and critical thresholds for Free Storage Percentage Monitoring"
}

variable "free_storage_percentage_message" {
  type        = "string"
  default     = ""
  description = "The message when Free Storage Percentage Monitor triggered"
}

variable "free_storage_percentage_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Free Storage Percentage Monitor isn't resolved for given time"
}

variable "disk_swap_usage_thresholds" {
  type = "map"

  default = {
    critical = "No default value"
  }

  description = "The warning and critical thresholds for Disk Swap Usage Monitoring"
}

variable "disk_swap_usage_message" {
  type        = "string"
  default     = ""
  description = "The message when Disk Swap Usage Monitor triggered"
}

variable "disk_swap_usage_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Disk Swap Usage Monitor isn't resolved for given time"
}

variable "db_connection_count_thresholds" {
  type = "map"

  default = {
    critical = "No default value"
  }

  description = "The warning and critical thresholds for DB Connection Count Monitoring"
}

variable "db_connection_count_message" {
  type        = "string"
  default     = ""
  description = "The message when DB Connection Count Monitor triggered"
}

variable "db_connection_count_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when DB Connection Count Monitor isn't resolved for given time"
}