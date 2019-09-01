module "rds" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  rds_name       = "beical-postgres"
  environment    = "production"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]

  cpu_usage_thresholds = {
    critical = 80
    warning  = 70
  }

  free_storage_percentage_thresholds = {
    critical = 40
    warning  = 50
  }

  disk_swap_usage_thresholds = {
    critical = 2000000
    warning  = 1000000
  }

  db_connection_count_thresholds = {
    critical = 5
    warning  = 10
  }
}

