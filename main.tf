
resource "aws_elasticache_cluster" "elasticache" {
  // Required parameters
  cluster_id           = "${var.engine}-${var.cluster_id}"

  // Required unless replication_group_id is provided
  # replication_group_id = "${var.replication_group_id}"
  node_type            = "${var.node_type}"
  engine               = "${var.engine}"
  num_cache_nodes      = "${var.num_cache_nodes}"
  parameter_group_name = "${var.parameter_group_name}"

  // Optional
  engine_version       = "${var.engine_version}"
  maintenance_window   = "${var.maintenance_window}"
  port                 = "${var.port}"
  subnet_group_name    = "${var.subnet_group_name}"
  security_group_ids   = "${var.security_group_names}"
  apply_immediately    = "${var.apply_immediately}"
  snapshot_arns        = "${var.snapshot_arns}"
  snapshot_name        = "${var.snapshot_name}"
  notification_topic_arn  = "${var.notification_topic_arn}"
  tags                 = "${var.tags}" 
  availability_zone    = "${var.availability_zone}"

  # // Optional, Redis only
  # snapshot_window      = "${var.snapshot_window}" 
  # snapshot_retention_limit = "${var.snapshot_retention_limit}"  
  
  # // Optional, Memcached only
  # preferred_availability_zones = "${var.preferred_availability_zones}"
  # az_mode              = "${var.az_mode}"   
}


