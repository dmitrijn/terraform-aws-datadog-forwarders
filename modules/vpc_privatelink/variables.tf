# PrivateLink / VPC Endpoints
variable "tags" {
  description = "A map of tags to use on all resources"
  type        = map(string)
  default     = {}
}

variable "create" {
  description = "Controls whether a VPC privatelink endpoint should be created"
  type        = bool
  default     = false
}

variable "create_dns_zone" {
  description = "Controls whether a Route53 zone creation"
  type        = bool
  default     = false
}

variable "create_dns_records" {
  description = "Controls whether a Route53 records creation"
  type        = bool
  default     = false
}

variable "vpc_id" {
  description = "ID of VPC to provision endpoints within"
  type        = string
  default     = null
}

variable "vpc_id_map" {
  description = "ID's of VPC to map to Route53 zone"
  type        = map(list(string))
  default     = null
}

variable "create_metrics_vpce" {
  description = "Controls whether a metrics VPC endpoint should be created"
  type        = bool
  default     = false
}

variable "metrics_vpce_service_name" {
  description = "Name of privatelink service name to associate with metrics endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-09a8006e245d1e7b8"
}

variable "metrics_vpce_subnet_ids" {
  description = "IDs of subnets to associate with metrics endpoint"
  type        = list(string)
  default     = []
}

variable "metrics_vpce_security_group_ids" {
  description = "IDs of security groups to attach to metrics endpoint"
  type        = list(string)
  default     = []
}

variable "metrics_vpce_policy" {
  description = "Policy to attach to the metrics endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "metrics_vpce_tags" {
  description = "A map of tags to apply to the metrics endpoint"
  type        = map(string)
  default     = {}
}

variable "create_agent_vpce" {
  description = "Controls whether an agent endpoint should be created"
  type        = bool
  default     = false
}

variable "agent_vpce_service_name" {
  description = "Name of privatelink service name to associate with agent endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-025a56b9187ac1f63"
}

variable "agent_vpce_subnet_ids" {
  description = "IDs of subnets to associate with agent endpoint"
  type        = list(string)
  default     = []
}

variable "agent_vpce_security_group_ids" {
  description = "IDs of security groups to attach to agent endpoint"
  type        = list(string)
  default     = []
}

variable "agent_vpce_policy" {
  description = "Policy to attach to the agent endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "agent_vpce_tags" {
  description = "A map of tags to apply to the Datadog agent endpoint"
  type        = map(string)
  default     = {}
}

variable "create_log_forwarder_vpce" {
  description = "Controls whether a log forwarder endpoint should be created"
  type        = bool
  default     = false
}

variable "log_forwarder_vpce_service_name" {
  description = "Name of privatelink service name to associate with log forwarder endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-0e36256cb6172439d"
}

variable "log_forwarder_vpce_subnet_ids" {
  description = "IDs of subnets to associate with log forwarder endpoint"
  type        = list(string)
  default     = []
}

variable "log_forwarder_vpce_security_group_ids" {
  description = "IDs of security groups to attach to log forwarder endpoint"
  type        = list(string)
  default     = []
}

variable "log_forwarder_vpce_policy" {
  description = "Policy to attach to the log forwarder endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "log_forwarder_vpce_tags" {
  description = "A map of tags to apply to the log forwarder endpoint"
  type        = map(string)
  default     = {}
}

variable "create_api_vpce" {
  description = "Controls whether a API endpoint should be created"
  type        = bool
  default     = false
}

variable "api_vpce_service_name" {
  description = "Name of privatelink service name to associate with api endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-064ea718f8d0ead77"
}

variable "api_vpce_subnet_ids" {
  description = "IDs of subnets to associate with API endpoint"
  type        = list(string)
  default     = []
}

variable "api_vpce_security_group_ids" {
  description = "IDs of security groups to attach to API endpoint"
  type        = list(string)
  default     = []
}

variable "api_vpce_policy" {
  description = "Policy to attach to the API endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "api_vpce_tags" {
  description = "A map of tags to apply to the API endpoint"
  type        = map(string)
  default     = {}
}

variable "create_processes_vpce" {
  description = "Controls whether a processes endpoint should be created"
  type        = bool
  default     = false
}

variable "processes_vpce_service_name" {
  description = "Name of privatelink service name to associate with processes endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-0ed1f789ac6b0bde1"
}

variable "processes_vpce_subnet_ids" {
  description = "IDs of subnets to associate with processes endpoint"
  type        = list(string)
  default     = []
}

variable "processes_vpce_security_group_ids" {
  description = "IDs of security groups to attach to processes endpoint"
  type        = list(string)
  default     = []
}

variable "processes_vpce_policy" {
  description = "Policy to attach to the processes endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "processes_vpce_tags" {
  description = "A map of tags to apply to the processes endpoint"
  type        = map(string)
  default     = {}
}

variable "create_traces_vpce" {
  description = "Controls whether a traces endpoint should be created"
  type        = bool
  default     = false
}

variable "traces_vpce_service_name" {
  description = "Name of privatelink service name to associate with traces endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-0355bb1880dfa09c2"
}

variable "traces_vpce_subnet_ids" {
  description = "IDs of subnets to associate with traces endpoint"
  type        = list(string)
  default     = []
}

variable "traces_vpce_security_group_ids" {
  description = "IDs of security groups to attach to traces endpoint"
  type        = list(string)
  default     = []
}

variable "traces_vpce_policy" {
  description = "Policy to attach to the traces endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "traces_vpce_tags" {
  description = "A map of tags to apply to the traces endpoint"
  type        = map(string)
  default     = {}
}

variable "create_profiling_vpce" {
  description = "Controls whether a profiling endpoint should be created"
  type        = bool
  default     = false
}

variable "profiling_vpce_service_name" {
  description = "Name of privatelink service name to associate with profiling endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-022ae36a7b2472029"
}

variable "profiling_vpce_subnet_ids" {
  description = "IDs of subnets to associate with profiling endpoint"
  type        = list(string)
  default     = []
}

variable "profiling_vpce_security_group_ids" {
  description = "IDs of security groups to attach to profiling endpoint"
  type        = list(string)
  default     = []
}

variable "profiling_vpce_policy" {
  description = "Policy to attach to the profiling endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "profiling_vpce_tags" {
  description = "A map of tags to apply to the profiling endpoint"
  type        = map(string)
  default     = {}
}

variable "create_containers_vpce" {
  description = "Controls whether a containers endpoint should be created"
  type        = bool
  default     = false
}

variable "containers_vpce_service_name" {
  description = "Name of privatelink service name to associate with containers endpoint"
  type        = string
  default     = "com.amazonaws.vpce.us-east-1.vpce-svc-0ad5fb9e71f85fe99"
}

variable "containers_vpce_subnet_ids" {
  description = "IDs of subnets to associate with containers endpoint"
  type        = list(string)
  default     = []
}

variable "containers_vpce_security_group_ids" {
  description = "IDs of security groups to attach to containers endpoint"
  type        = list(string)
  default     = []
}

variable "containers_vpce_policy" {
  description = "Policy to attach to the containers endpoint that controls access to the service. Defaults to full access"
  type        = any
  default     = null
}

variable "containers_vpce_tags" {
  description = "A map of tags to apply to the containers endpoint"
  type        = map(string)
  default     = {}
}
