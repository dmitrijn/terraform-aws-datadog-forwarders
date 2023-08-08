# Metrics VPC Endpoint
output "metrics_endpoint_id" {
  description = "ID of the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].id, "")
}

output "metrics_endpoint_arn" {
  description = "ARN of the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].arn, "")
}

output "metrics_endpoint_dns_entry" {
  description = "DNS entries of the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].dns_entry, "")
}

output "metrics_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].network_interface_ids, "")
}

output "metrics_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].owner_id, "")
}

output "metrics_endpoint_state" {
  description = "The state of the metrics VPC endpoint"
  value       = try(aws_vpc_endpoint.metrics[0].state, "")
}

# Agent VPC Endpoint
output "agent_endpoint_id" {
  description = "ID of the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].id, "")
}

output "agent_endpoint_arn" {
  description = "ARN of the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].arn, "")
}

output "agent_endpoint_dns_entry" {
  description = "DNS entries of the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].dns_entry, "")
}

output "agent_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].network_interface_ids, "")
}

output "agent_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].owner_id, "")
}

output "agent_endpoint_state" {
  description = "The state of the agent VPC endpoint"
  value       = try(aws_vpc_endpoint.agent[0].state, "")
}

# Log Forwarder VPC Endpoint
output "log_forwarder_endpoint_id" {
  description = "ID of the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].id, "")
}

output "log_forwarder_endpoint_arn" {
  description = "ARN of the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].arn, "")
}

output "log_forwarder_endpoint_dns_entry" {
  description = "DNS entries of the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].dns_entry, "")
}

output "log_forwarder_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].network_interface_ids, "")
}

output "log_forwarder_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].owner_id, "")
}

output "log_forwarder_endpoint_state" {
  description = "The state of the log forwarder VPC endpoint"
  value       = try(aws_vpc_endpoint.log_forwarder[0].state, "")
}

# API VPC Endpoint
output "api_endpoint_id" {
  description = "ID of the API VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].id, "")
}

output "api_endpoint_arn" {
  description = "ARN of the API VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].arn, "")
}

output "api_endpoint_dns_entry" {
  description = "DNS entries of the API VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].dns_entry, "")
}

output "api_endpoint_network_interface_ids" {
  description = "One or more network interfaces for API api VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].network_interface_ids, "")
}

output "api_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the API VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].owner_id, "")
}

output "api_endpoint_state" {
  description = "The state of the API VPC endpoint"
  value       = try(aws_vpc_endpoint.api[0].state, "")
}

# Processes VPC Endpoint
output "processes_endpoint_id" {
  description = "ID of the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].id, "")
}

output "processes_endpoint_arn" {
  description = "ARN of the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].arn, "")
}

output "processes_endpoint_dns_entry" {
  description = "DNS entries of the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].dns_entry, "")
}

output "processes_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].network_interface_ids, "")
}

output "processes_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].owner_id, "")
}

output "processes_endpoint_state" {
  description = "The state of the processes VPC endpoint"
  value       = try(aws_vpc_endpoint.processes[0].state, "")
}

# Traces VPC Endpoint
output "traces_endpoint_id" {
  description = "ID of the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].id, "")
}

output "traces_endpoint_arn" {
  description = "ARN of the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].arn, "")
}

output "traces_endpoint_dns_entry" {
  description = "DNS entries of the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].dns_entry, "")
}

output "traces_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].network_interface_ids, "")
}

output "traces_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].owner_id, "")
}

output "traces_endpoint_state" {
  description = "The state of the traces VPC endpoint"
  value       = try(aws_vpc_endpoint.traces[0].state, "")
}

# Profiling VPC Endpoint
output "profiling_endpoint_id" {
  description = "ID of the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].id, "")
}

output "profiling_endpoint_arn" {
  description = "ARN of the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].arn, "")
}

output "profiling_endpoint_dns_entry" {
  description = "DNS entries of the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].dns_entry, "")
}

output "profiling_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].network_interface_ids, "")
}

output "profiling_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].owner_id, "")
}

output "profiling_endpoint_state" {
  description = "The state of the profiling VPC endpoint"
  value       = try(aws_vpc_endpoint.profiling[0].state, "")
}

# Containers VPC Endpoint
output "containers_endpoint_id" {
  description = "ID of the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].id, "")
}

output "containers_endpoint_arn" {
  description = "ARN of the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].arn, "")
}

output "containers_endpoint_dns_entry" {
  description = "DNS entries of the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].dns_entry, "")
}

output "containers_endpoint_network_interface_ids" {
  description = "One or more network interfaces for the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].network_interface_ids, "")
}

output "containers_endpoint_owner_id" {
  description = "The ID of the AWS account that owns the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].owner_id, "")
}

output "containers_endpoint_state" {
  description = "The state of the containers VPC endpoint"
  value       = try(aws_vpc_endpoint.containers[0].state, "")
}
