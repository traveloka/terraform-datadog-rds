module "timeboard_rds_beical-db-01" {
  source         = "../../"
  product_domain = "${var.product_domain}"
  rds_name       = "${var.rds_name}"
}
