locals {
  monitor_enabled = "${var.enabled && length(var.recipients) > 0 ? 1 : 0}"
}

resource "datadog_timeboard" "rds" {
  title       = "${var.product_domain} - ${var.rds_name} - ${var.environment} - RDS"
  description = "A generated timeboard for RDS"

  template_variable {
    default = "${var.rds_name}"
    name    = "rds_name"
    prefix  = "name"
  }

  template_variable {
    default = "${var.environment}"
    name    = "environment"
    prefix  = "environment"
  }

  graph {
    title     = "Bin Log Disk Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.bin_log_disk_usage{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Burst Balance"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.burst_balance{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "CPU Utilization"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.cpuutilization{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Database Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.database_connections{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Disk Queue Depth"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.disk_queue_depth{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Free Storage Space"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.free_storage_space{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Freeable Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.freeable_memory{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Maximum Used Transaction Ids"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.maximum_used_transaction_ids{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Network Receive Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.network_receive_throughput{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Network Transmit Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.network_transmit_throughput{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Oldest Replication Slot Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.oldest_replication_slot_lag{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read IOPS"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_iops{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_latency{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Read Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.read_throughput{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Replica Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.replica_lag{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Replication Slot Disk Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.replication_slot_disk_usage{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Swap Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.swap_usage{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Total Storage Space"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.total_storage_space{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Transaction Logs Disk Usage"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.transaction_logs_disk_usage{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Transaction Logs Generation"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.transaction_logs_generation{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write IOPS"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_iops{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_latency{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }

  graph {
    title     = "Write Throughtput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:aws.rds.write_throughput{$rds_name, $environment} by {hostname}"
      type = "area"
    }
  }
}

module "monitor_cpu_usage" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.rds.*.id)}"

  name               = "${var.product_domain} - ${var.rds_name} - ${var.environment} - CPU Usage is High"
  query              = "avg(last_5m):avg:aws.rds.cpuutilization{name:${var.rds_name}, environment:${var.environment}} by {hostname} >= ${var.cpu_usage_thresholds["critical"]}"
  thresholds         = "${var.cpu_usage_thresholds}"
  message            = "${var.cpu_usage_message}"
  escalation_message = "${var.cpu_usage_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_free_storage_percentage" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.rds.*.id)}"

  name               = "${var.product_domain} - ${var.rds_name} - ${var.environment} - Free Storage Percentage is Low"
  query              = "avg(last_1h):avg:aws.rds.free_storage_space{name:${var.rds_name}, environment:${var.environment}} by {hostname} * 100 / avg:aws.rds.total_storage_space{name:${var.rds_name}, environment:${var.environment}} by {hostname} <= ${var.free_storage_percentage_thresholds["critical"]}"
  thresholds         = "${var.free_storage_percentage_thresholds}"
  message            = "${var.free_storage_percentage_message}"
  escalation_message = "${var.free_storage_percentage_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_db_connection_count" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.rds.*.id)}"

  name               = "${var.product_domain} - ${var.rds_name} - ${var.environment} - DB Connection Count is Low"
  query              = "avg(last_5m):avg:aws.rds.database_connections{name:${var.rds_name}, environment:${var.environment}} by {hostname} <= ${var.db_connection_count_thresholds["critical"]}"
  thresholds         = "${var.db_connection_count_thresholds}"
  message            = "${var.db_connection_count_message}"
  escalation_message = "${var.db_connection_count_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}
