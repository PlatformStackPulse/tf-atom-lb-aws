output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "id" {
  description = "ID of the load balancer"
  value       = try(aws_lb.this[0].id, null)
}

output "arn" {
  description = "ARN of the load balancer"
  value       = try(aws_lb.this[0].arn, null)
}

output "dns_name" {
  description = "DNS name of the load balancer"
  value       = try(aws_lb.this[0].dns_name, null)
}

output "zone_id" {
  description = "Canonical hosted zone ID for Route53 alias"
  value       = try(aws_lb.this[0].zone_id, null)
}

output "arn_suffix" {
  description = "ARN suffix for CloudWatch metrics"
  value       = try(aws_lb.this[0].arn_suffix, null)
}
