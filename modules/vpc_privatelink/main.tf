################################################################################
# PrivateLink / VPC Endpoints
################################################################################

resource "aws_vpc_endpoint" "metrics" {
  provider = aws.us-east-1
  count    = var.create && var.create_metrics_vpce ? 1 : 0

  service_name        = var.metrics_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.metrics_vpce_subnet_ids
  security_group_ids = var.metrics_vpce_security_group_ids
  policy             = var.metrics_vpce_policy

  tags = merge({ Name = "datadog-metrics" }, var.tags, var.metrics_vpce_tags)
}

resource "aws_vpc_endpoint" "agent" {
  provider = aws.us-east-1
  count    = var.create && var.create_agent_vpce ? 1 : 0

  service_name        = var.agent_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.agent_vpce_subnet_ids
  security_group_ids = var.agent_vpce_security_group_ids
  policy             = var.agent_vpce_policy

  tags = merge({ Name = "datadog-agent" }, var.tags, var.agent_vpce_tags)
}

resource "aws_vpc_endpoint" "log_forwarder" {
  provider = aws.us-east-1
  count    = var.create && var.create_log_forwarder_vpce ? 1 : 0

  service_name        = var.log_forwarder_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.log_forwarder_vpce_subnet_ids
  security_group_ids = var.log_forwarder_vpce_security_group_ids
  policy             = var.log_forwarder_vpce_policy

  tags = merge({ Name = "datadog-log-forwarder" }, var.tags, var.log_forwarder_vpce_tags)
}

resource "aws_vpc_endpoint" "api" {
  provider = aws.us-east-1
  count    = var.create && var.create_api_vpce ? 1 : 0

  service_name        = var.api_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.api_vpce_subnet_ids
  security_group_ids = var.api_vpce_security_group_ids
  policy             = var.api_vpce_policy

  tags = merge({ Name = "datadog-api" }, var.tags, var.api_vpce_tags)
}

resource "aws_vpc_endpoint" "processes" {
  provider = aws.us-east-1
  count    = var.create && var.create_processes_vpce ? 1 : 0

  service_name        = var.processes_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.processes_vpce_subnet_ids
  security_group_ids = var.processes_vpce_security_group_ids
  policy             = var.processes_vpce_policy

  tags = merge({ Name = "datadog-processes" }, var.tags, var.processes_vpce_tags)
}

resource "aws_vpc_endpoint" "traces" {
  provider = aws.us-east-1
  count    = var.create && var.create_traces_vpce ? 1 : 0

  service_name        = var.traces_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.traces_vpce_subnet_ids
  security_group_ids = var.traces_vpce_security_group_ids
  policy             = var.traces_vpce_policy

  tags = merge({ Name = "datadog-traces" }, var.tags, var.traces_vpce_tags)
}

resource "aws_vpc_endpoint" "profiling" {
  provider = aws.us-east-1
  count    = var.create && var.create_profiling_vpce ? 1 : 0

  service_name        = var.profiling_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.profiling_vpce_subnet_ids
  security_group_ids = var.profiling_vpce_security_group_ids
  policy             = var.profiling_vpce_policy

  tags = merge({ Name = "datadog-profiling" }, var.tags, var.profiling_vpce_tags)
}

resource "aws_vpc_endpoint" "containers" {
  provider = aws.us-east-1
  count    = var.create && var.create_containers_vpce ? 1 : 0

  service_name        = var.containers_vpce_service_name
  vpc_endpoint_type   = "Interface"
  private_dns_enabled = true

  vpc_id             = var.vpc_id
  subnet_ids         = var.containers_vpce_subnet_ids
  security_group_ids = var.containers_vpce_security_group_ids
  policy             = var.containers_vpce_policy

  tags = merge({ Name = "datadog-containers" }, var.tags, var.containers_vpce_tags)
}

resource "aws_route53_zone" "datadoghq_zone" {
  provider = aws.us-east-1
  count    = var.create && var.create_dns_zone ? 1 : 0
  name     = "datadoghq.com"

  dynamic "vpc" {
    for_each = var.vpc_id_map

    content {
      vpc_id     = vpc.value.vpc_id
      vpc_region = lookup(vpc.value, "vpc_region", null)
    }
  }
}

locals {
  create_containers_vpce = var.create_containers_vpce ? [
    {
      name    = "orchestrator"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.containers[0].dns_entry}"]
    },
  ] : []
  create_profiling_vpce = var.create_profiling_vpce ? [
    {
      name    = "intake.profile"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.profiling[0].dns_entry}"]
    },
  ] : []
  create_traces_vpce = var.create_traces_vpce ? [
    {
      name    = "trace"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.traces[0].dns_entry}"]
    },
  ] : []
  create_processes_vpce = var.create_processes_vpce ? [
    {
      name    = "process"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.processes[0].dns_entry}"]
    },
  ] : []
  create_api_vpce = var.create_api_vpce ? [
    {
      name    = "api"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.api[0].dns_entry}"]
    },
  ] : []
  create_log_forwarder_vpce = var.create_log_forwarder_vpce ? [
    {
      name    = "http-intake.logs"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.log_forwarder[0].dns_entry}"]
    },
  ] : []
  create_agent_vpce = var.create_agent_vpce ? [
    {
      name    = "agent-http-intake.logs"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.agent[0].dns_entry}"]
    },
  ] : []
  create_metrics_vpce = var.create_metrics_vpce ? [
    {
      name    = "metrics.agent"
      type    = "CNAME"
      ttl     = 3600
      records = ["${aws_vpc_endpoint.metrics[0].dns_entry}"]
    },
  ] : []
}

module "route53_records" {
  providers = {
    aws = aws.us-east-1
  }

  count   = var.create && var.create_dns_zone && var.create_dns_records ? 1 : 0
  source  = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.10"

  zone_id = aws_route53_zone.datadoghq_zone[0].zone_id

  records = concat(
    local.create_containers_vpce,
    local.create_profiling_vpce,
    local.create_traces_vpce,
    local.create_api_vpce,
    local.create_metrics_vpce,
    local.create_agent_vpce,
    local.create_log_forwarder_vpce,
  )

  depends_on = [aws_route53_zone.datadoghq_zone]
}
