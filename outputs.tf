output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.rds.*.title)}"
  description = "The title of datadog timeboard for RDS"
}

output "monitor_cpu_usage_name" {
  value       = "${module.monitor_cpu_usage.name}"
  description = "The name of datadog monitor for CPU Usage"
}

output "monitor_free_storage_percentage_name" {
  value       = "${module.monitor_free_storage_percentage.name}"
  description = "The name of datadog monitor for Free Storage Percentage"
}

output "monitor_db_connection_count_name" {
  value       = "${module.monitor_db_connection_count.name}"
  description = "The name of datadog monitor for DB Connection Count"
}
