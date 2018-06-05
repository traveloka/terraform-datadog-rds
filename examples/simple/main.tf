module "rds" {
  source         = "../../"
  product_domain = "BEI"
  service        = "beical"
  rds_name       = "beical-postgres"
  environment    = "production"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
