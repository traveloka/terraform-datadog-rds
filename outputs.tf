output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.rds.*.title)}"
  description = "The title of datadog timeboard for RDS"
}
