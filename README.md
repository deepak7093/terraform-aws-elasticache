# Terraform module for AWS ElastiCache 
This module is useful to create aws elasticache redis/memcached clusters.

## Usage

```
module "redis" {
  source = "../../../modules/elasticache"
  cluster_id = "test-cluster"
  engine = "redis"
  port = 6379
  node_type = "cache.t2.micro"
  engine_version = "3.2.10"
  num_cache_nodes = 1
  parameter_group_name = "default.redis3.2"
}
```


# License

Apache 2 Licensed. See LICENSE for full details.
