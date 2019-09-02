output "timeboard_title" {
  value = "${module.rds.timeboard_title}"
}

output "monitor_cpu_usage_name" {
  value = "${module.rds.monitor_cpu_usage_name}"
}

output "monitor_free_storage_percentage_name" {
  value = "${module.rds.monitor_free_storage_percentage_name}"
}

output "monitor_db_connection_count_name" {
  value = "${module.rds.monitor_db_connection_count_name}"
}