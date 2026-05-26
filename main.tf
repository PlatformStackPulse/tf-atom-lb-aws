resource "aws_lb" "this" {
  count = module.this.enabled ? 1 : 0

  name               = module.this.id
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  security_groups    = var.load_balancer_type == "application" ? var.security_group_ids : null
  subnets            = var.subnet_ids

  enable_deletion_protection = var.enable_deletion_protection
  drop_invalid_header_fields = var.load_balancer_type == "application" ? true : null

  tags = module.this.tags
}
