module "rds" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  rds_name       = "beical-postgres"
  environment    = "production"
  tags           = ["tag1", "tag2"]

  recipients         = ["bei@traveloka.com"]
  alert_recipients   = ["pagerduty-bei"]
  warning_recipients = ["slack-bei"]
  renotify_interval  = 0
  notify_audit       = false

  cpu_usage_thresholds = {
    critical = 80
    warning  = 70
  }

  cpu_usage_message            = "Monitor is triggered"
  cpu_usage_escalation_message = "Monitor isn't resolved for given interval"

  free_storage_percentage_thresholds = {
    critical = 40
    warning  = 50
  }

  free_storage_percentage_message            = "Monitor is triggered"
  free_storage_percentage_escalation_message = "Monitor isn't resolved for given interval"

  db_connection_count_thresholds = {
    critical = 5
    warning  = 10
  }

  db_connection_count_message            = "Monitor is triggered"
  db_connection_count_escalation_message = "Monitor isn't resolved for given interval"
}
