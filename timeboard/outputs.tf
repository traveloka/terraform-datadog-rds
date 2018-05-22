output "title" {
  value       = "${datadog_timeboard.rds.title}"
  description = "The title of datadog timeboard for RDS"
}
