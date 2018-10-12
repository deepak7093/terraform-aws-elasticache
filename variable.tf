variable "cluster_id" {
  type = "string"
  description = "cluster_id of cluster"
  default = ""
}

variable "replication_group_id" {
  type = "string"
  description = "existing replication_group_id of cluster"
  default = ""
}

variable "node_type" {
  type = "string"
  description = "node_type of cluster"
  default = ""
}

variable "engine" {
  type = "string"
  description = "engine type allowed values are redis or memcached"
  default = ""
}

variable "num_cache_nodes" {
  type = "string"
  description = "num_cache_nodes"
}


variable "engine_version" {
  type = "string"
  description = "engine_version"
  default = ""
}

variable "maintenance_window" {
  type = "string"
  description = "describe your variable"
  default = "sun:05:00-sun:06:00"
}

variable "snapshot_window" {
  type = "string"
  description = "describe your variable"
  default = "05:00-06:00"
}

variable "port" {
  type = "string"
  description = "For Memcache the default is 11211, and for Redis the default port is 6379."
}


variable "subnet_group_name" {
  type = "string"
  description = "subnet group name "
  default = ""
}


variable "apply_immediately" {
  type = "string"
  description = "apply immediately default set to false"
  default = "false"
}


variable "snapshot_arns" {
  type = "list"
  description = "snapshot_arns"
  default = []
}

variable "snapshot_name" {
  type = "string"
  description = "snapshot_name"
  default = ""
}

variable "notification_topic_arn" {
  type = "string"
  description = "notification_topic_arn"
  default = ""
}

variable "tags" {
  type = "map"
  description = "tags"
  default = {}
}

variable "availability_zone" {
  type = "string"
  description = "availability_zone"
  default = ""
}

variable "snapshot_retention_limit" {
  type = "string"
  description = "snapshot_retention_limit"
  default = 7
}

variable "security_group_ids" {
  type = "list"
  description = "security_group_ids"
  default = []
}

variable "security_group_names" {
  type = "list"
  default = []
}

variable "preferred_availability_zones" {
  type = "list"
  default = []
} 

variable "az_mode" {
  type = "string"
  default = "single-az" 
  description = "Valid values for this parameter are single-az or cross-az"
}


variable "parameter_group_name" {
  type = "string"
  description = "parameter_group_name"
  default = ""
}
