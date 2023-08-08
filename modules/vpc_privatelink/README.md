## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | 5.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_endpoint.agent](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.api](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.containers](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.log_forwarder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.metrics](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.processes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.profiling](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.traces](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_vpce_policy"></a> [agent\_vpce\_policy](#input\_agent\_vpce\_policy) | Policy to attach to the agent endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_agent_vpce_security_group_ids"></a> [agent\_vpce\_security\_group\_ids](#input\_agent\_vpce\_security\_group\_ids) | IDs of security groups to attach to agent endpoint | `list(string)` | `[]` | no |
| <a name="input_agent_vpce_service_name"></a> [agent\_vpce\_service\_name](#input\_agent\_vpce\_service\_name) | Name of privatelink service name to associate with agent endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-025a56b9187ac1f63"` | no |
| <a name="input_agent_vpce_subnet_ids"></a> [agent\_vpce\_subnet\_ids](#input\_agent\_vpce\_subnet\_ids) | IDs of subnets to associate with agent endpoint | `list(string)` | `[]` | no |
| <a name="input_agent_vpce_tags"></a> [agent\_vpce\_tags](#input\_agent\_vpce\_tags) | A map of tags to apply to the Datadog agent endpoint | `map(string)` | `{}` | no |
| <a name="input_api_vpce_policy"></a> [api\_vpce\_policy](#input\_api\_vpce\_policy) | Policy to attach to the API endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_api_vpce_security_group_ids"></a> [api\_vpce\_security\_group\_ids](#input\_api\_vpce\_security\_group\_ids) | IDs of security groups to attach to API endpoint | `list(string)` | `[]` | no |
| <a name="input_api_vpce_service_name"></a> [api\_vpce\_service\_name](#input\_api\_vpce\_service\_name) | Name of privatelink service name to associate with api endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-064ea718f8d0ead77"` | no |
| <a name="input_api_vpce_subnet_ids"></a> [api\_vpce\_subnet\_ids](#input\_api\_vpce\_subnet\_ids) | IDs of subnets to associate with API endpoint | `list(string)` | `[]` | no |
| <a name="input_api_vpce_tags"></a> [api\_vpce\_tags](#input\_api\_vpce\_tags) | A map of tags to apply to the API endpoint | `map(string)` | `{}` | no |
| <a name="input_containers_vpce_policy"></a> [containers\_vpce\_policy](#input\_containers\_vpce\_policy) | Policy to attach to the containers endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_containers_vpce_security_group_ids"></a> [containers\_vpce\_security\_group\_ids](#input\_containers\_vpce\_security\_group\_ids) | IDs of security groups to attach to containers endpoint | `list(string)` | `[]` | no |
| <a name="input_containers_vpce_service_name"></a> [containers\_vpce\_service\_name](#input\_containers\_vpce\_service\_name) | Name of privatelink service name to associate with containers endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-0ad5fb9e71f85fe99"` | no |
| <a name="input_containers_vpce_subnet_ids"></a> [containers\_vpce\_subnet\_ids](#input\_containers\_vpce\_subnet\_ids) | IDs of subnets to associate with containers endpoint | `list(string)` | `[]` | no |
| <a name="input_containers_vpce_tags"></a> [containers\_vpce\_tags](#input\_containers\_vpce\_tags) | A map of tags to apply to the containers endpoint | `map(string)` | `{}` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls whether a VPC privatelink endpoint should be created | `bool` | `false` | no |
| <a name="input_create_agent_vpce"></a> [create\_agent\_vpce](#input\_create\_agent\_vpce) | Controls whether an agent endpoint should be created | `bool` | `false` | no |
| <a name="input_create_api_vpce"></a> [create\_api\_vpce](#input\_create\_api\_vpce) | Controls whether a API endpoint should be created | `bool` | `false` | no |
| <a name="input_create_containers_vpce"></a> [create\_containers\_vpce](#input\_create\_containers\_vpce) | Controls whether a containers endpoint should be created | `bool` | `false` | no |
| <a name="input_create_log_forwarder_vpce"></a> [create\_log\_forwarder\_vpce](#input\_create\_log\_forwarder\_vpce) | Controls whether a log forwarder endpoint should be created | `bool` | `false` | no |
| <a name="input_create_metrics_vpce"></a> [create\_metrics\_vpce](#input\_create\_metrics\_vpce) | Controls whether a metrics VPC endpoint should be created | `bool` | `false` | no |
| <a name="input_create_processes_vpce"></a> [create\_processes\_vpce](#input\_create\_processes\_vpce) | Controls whether a processes endpoint should be created | `bool` | `false` | no |
| <a name="input_create_profiling_vpce"></a> [create\_profiling\_vpce](#input\_create\_profiling\_vpce) | Controls whether a profiling endpoint should be created | `bool` | `false` | no |
| <a name="input_create_traces_vpce"></a> [create\_traces\_vpce](#input\_create\_traces\_vpce) | Controls whether a traces endpoint should be created | `bool` | `false` | no |
| <a name="input_log_forwarder_vpce_policy"></a> [log\_forwarder\_vpce\_policy](#input\_log\_forwarder\_vpce\_policy) | Policy to attach to the log forwarder endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_log_forwarder_vpce_security_group_ids"></a> [log\_forwarder\_vpce\_security\_group\_ids](#input\_log\_forwarder\_vpce\_security\_group\_ids) | IDs of security groups to attach to log forwarder endpoint | `list(string)` | `[]` | no |
| <a name="input_log_forwarder_vpce_service_name"></a> [log\_forwarder\_vpce\_service\_name](#input\_log\_forwarder\_vpce\_service\_name) | Name of privatelink service name to associate with log forwarder endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-0e36256cb6172439d"` | no |
| <a name="input_log_forwarder_vpce_subnet_ids"></a> [log\_forwarder\_vpce\_subnet\_ids](#input\_log\_forwarder\_vpce\_subnet\_ids) | IDs of subnets to associate with log forwarder endpoint | `list(string)` | `[]` | no |
| <a name="input_log_forwarder_vpce_tags"></a> [log\_forwarder\_vpce\_tags](#input\_log\_forwarder\_vpce\_tags) | A map of tags to apply to the log forwarder endpoint | `map(string)` | `{}` | no |
| <a name="input_metrics_vpce_policy"></a> [metrics\_vpce\_policy](#input\_metrics\_vpce\_policy) | Policy to attach to the metrics endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_metrics_vpce_security_group_ids"></a> [metrics\_vpce\_security\_group\_ids](#input\_metrics\_vpce\_security\_group\_ids) | IDs of security groups to attach to metrics endpoint | `list(string)` | `[]` | no |
| <a name="input_metrics_vpce_service_name"></a> [metrics\_vpce\_service\_name](#input\_metrics\_vpce\_service\_name) | Name of privatelink service name to associate with metrics endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-09a8006e245d1e7b8"` | no |
| <a name="input_metrics_vpce_subnet_ids"></a> [metrics\_vpce\_subnet\_ids](#input\_metrics\_vpce\_subnet\_ids) | IDs of subnets to associate with metrics endpoint | `list(string)` | `[]` | no |
| <a name="input_metrics_vpce_tags"></a> [metrics\_vpce\_tags](#input\_metrics\_vpce\_tags) | A map of tags to apply to the metrics endpoint | `map(string)` | `{}` | no |
| <a name="input_processes_vpce_policy"></a> [processes\_vpce\_policy](#input\_processes\_vpce\_policy) | Policy to attach to the processes endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_processes_vpce_security_group_ids"></a> [processes\_vpce\_security\_group\_ids](#input\_processes\_vpce\_security\_group\_ids) | IDs of security groups to attach to processes endpoint | `list(string)` | `[]` | no |
| <a name="input_processes_vpce_service_name"></a> [processes\_vpce\_service\_name](#input\_processes\_vpce\_service\_name) | Name of privatelink service name to associate with processes endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-0ed1f789ac6b0bde1"` | no |
| <a name="input_processes_vpce_subnet_ids"></a> [processes\_vpce\_subnet\_ids](#input\_processes\_vpce\_subnet\_ids) | IDs of subnets to associate with processes endpoint | `list(string)` | `[]` | no |
| <a name="input_processes_vpce_tags"></a> [processes\_vpce\_tags](#input\_processes\_vpce\_tags) | A map of tags to apply to the processes endpoint | `map(string)` | `{}` | no |
| <a name="input_profiling_vpce_policy"></a> [profiling\_vpce\_policy](#input\_profiling\_vpce\_policy) | Policy to attach to the profiling endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_profiling_vpce_security_group_ids"></a> [profiling\_vpce\_security\_group\_ids](#input\_profiling\_vpce\_security\_group\_ids) | IDs of security groups to attach to profiling endpoint | `list(string)` | `[]` | no |
| <a name="input_profiling_vpce_service_name"></a> [profiling\_vpce\_service\_name](#input\_profiling\_vpce\_service\_name) | Name of privatelink service name to associate with profiling endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-022ae36a7b2472029"` | no |
| <a name="input_profiling_vpce_subnet_ids"></a> [profiling\_vpce\_subnet\_ids](#input\_profiling\_vpce\_subnet\_ids) | IDs of subnets to associate with profiling endpoint | `list(string)` | `[]` | no |
| <a name="input_profiling_vpce_tags"></a> [profiling\_vpce\_tags](#input\_profiling\_vpce\_tags) | A map of tags to apply to the profiling endpoint | `map(string)` | `{}` | no |
| <a name="input_traces_vpce_policy"></a> [traces\_vpce\_policy](#input\_traces\_vpce\_policy) | Policy to attach to the traces endpoint that controls access to the service. Defaults to full access | `any` | `null` | no |
| <a name="input_traces_vpce_security_group_ids"></a> [traces\_vpce\_security\_group\_ids](#input\_traces\_vpce\_security\_group\_ids) | IDs of security groups to attach to traces endpoint | `list(string)` | `[]` | no |
| <a name="input_traces_vpce_service_name"></a> [traces\_vpce\_service\_name](#input\_traces\_vpce\_service\_name) | Name of privatelink service name to associate with traces endpoint | `string` | `"com.amazonaws.vpce.us-east-1.vpce-svc-0355bb1880dfa09c2"` | no |
| <a name="input_traces_vpce_subnet_ids"></a> [traces\_vpce\_subnet\_ids](#input\_traces\_vpce\_subnet\_ids) | IDs of subnets to associate with traces endpoint | `list(string)` | `[]` | no |
| <a name="input_traces_vpce_tags"></a> [traces\_vpce\_tags](#input\_traces\_vpce\_tags) | A map of tags to apply to the traces endpoint | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of VPC to provision endpoints within | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_agent_endpoint_arn"></a> [agent\_endpoint\_arn](#output\_agent\_endpoint\_arn) | ARN of the agent VPC endpoint |
| <a name="output_agent_endpoint_dns_entry"></a> [agent\_endpoint\_dns\_entry](#output\_agent\_endpoint\_dns\_entry) | DNS entries of the agent VPC endpoint |
| <a name="output_agent_endpoint_id"></a> [agent\_endpoint\_id](#output\_agent\_endpoint\_id) | ID of the agent VPC endpoint |
| <a name="output_agent_endpoint_network_interface_ids"></a> [agent\_endpoint\_network\_interface\_ids](#output\_agent\_endpoint\_network\_interface\_ids) | One or more network interfaces for the agent VPC endpoint |
| <a name="output_agent_endpoint_owner_id"></a> [agent\_endpoint\_owner\_id](#output\_agent\_endpoint\_owner\_id) | The ID of the AWS account that owns the agent VPC endpoint |
| <a name="output_agent_endpoint_state"></a> [agent\_endpoint\_state](#output\_agent\_endpoint\_state) | The state of the agent VPC endpoint |
| <a name="output_api_endpoint_arn"></a> [api\_endpoint\_arn](#output\_api\_endpoint\_arn) | ARN of the API VPC endpoint |
| <a name="output_api_endpoint_dns_entry"></a> [api\_endpoint\_dns\_entry](#output\_api\_endpoint\_dns\_entry) | DNS entries of the API VPC endpoint |
| <a name="output_api_endpoint_id"></a> [api\_endpoint\_id](#output\_api\_endpoint\_id) | ID of the API VPC endpoint |
| <a name="output_api_endpoint_network_interface_ids"></a> [api\_endpoint\_network\_interface\_ids](#output\_api\_endpoint\_network\_interface\_ids) | One or more network interfaces for API api VPC endpoint |
| <a name="output_api_endpoint_owner_id"></a> [api\_endpoint\_owner\_id](#output\_api\_endpoint\_owner\_id) | The ID of the AWS account that owns the API VPC endpoint |
| <a name="output_api_endpoint_state"></a> [api\_endpoint\_state](#output\_api\_endpoint\_state) | The state of the API VPC endpoint |
| <a name="output_containers_endpoint_arn"></a> [containers\_endpoint\_arn](#output\_containers\_endpoint\_arn) | ARN of the containers VPC endpoint |
| <a name="output_containers_endpoint_dns_entry"></a> [containers\_endpoint\_dns\_entry](#output\_containers\_endpoint\_dns\_entry) | DNS entries of the containers VPC endpoint |
| <a name="output_containers_endpoint_id"></a> [containers\_endpoint\_id](#output\_containers\_endpoint\_id) | ID of the containers VPC endpoint |
| <a name="output_containers_endpoint_network_interface_ids"></a> [containers\_endpoint\_network\_interface\_ids](#output\_containers\_endpoint\_network\_interface\_ids) | One or more network interfaces for the containers VPC endpoint |
| <a name="output_containers_endpoint_owner_id"></a> [containers\_endpoint\_owner\_id](#output\_containers\_endpoint\_owner\_id) | The ID of the AWS account that owns the containers VPC endpoint |
| <a name="output_containers_endpoint_state"></a> [containers\_endpoint\_state](#output\_containers\_endpoint\_state) | The state of the containers VPC endpoint |
| <a name="output_log_forwarder_endpoint_arn"></a> [log\_forwarder\_endpoint\_arn](#output\_log\_forwarder\_endpoint\_arn) | ARN of the log forwarder VPC endpoint |
| <a name="output_log_forwarder_endpoint_dns_entry"></a> [log\_forwarder\_endpoint\_dns\_entry](#output\_log\_forwarder\_endpoint\_dns\_entry) | DNS entries of the log forwarder VPC endpoint |
| <a name="output_log_forwarder_endpoint_id"></a> [log\_forwarder\_endpoint\_id](#output\_log\_forwarder\_endpoint\_id) | ID of the log forwarder VPC endpoint |
| <a name="output_log_forwarder_endpoint_network_interface_ids"></a> [log\_forwarder\_endpoint\_network\_interface\_ids](#output\_log\_forwarder\_endpoint\_network\_interface\_ids) | One or more network interfaces for the log forwarder VPC endpoint |
| <a name="output_log_forwarder_endpoint_owner_id"></a> [log\_forwarder\_endpoint\_owner\_id](#output\_log\_forwarder\_endpoint\_owner\_id) | The ID of the AWS account that owns the log forwarder VPC endpoint |
| <a name="output_log_forwarder_endpoint_state"></a> [log\_forwarder\_endpoint\_state](#output\_log\_forwarder\_endpoint\_state) | The state of the log forwarder VPC endpoint |
| <a name="output_metrics_endpoint_arn"></a> [metrics\_endpoint\_arn](#output\_metrics\_endpoint\_arn) | ARN of the metrics VPC endpoint |
| <a name="output_metrics_endpoint_dns_entry"></a> [metrics\_endpoint\_dns\_entry](#output\_metrics\_endpoint\_dns\_entry) | DNS entries of the metrics VPC endpoint |
| <a name="output_metrics_endpoint_id"></a> [metrics\_endpoint\_id](#output\_metrics\_endpoint\_id) | ID of the metrics VPC endpoint |
| <a name="output_metrics_endpoint_network_interface_ids"></a> [metrics\_endpoint\_network\_interface\_ids](#output\_metrics\_endpoint\_network\_interface\_ids) | One or more network interfaces for the metrics VPC endpoint |
| <a name="output_metrics_endpoint_owner_id"></a> [metrics\_endpoint\_owner\_id](#output\_metrics\_endpoint\_owner\_id) | The ID of the AWS account that owns the metrics VPC endpoint |
| <a name="output_metrics_endpoint_state"></a> [metrics\_endpoint\_state](#output\_metrics\_endpoint\_state) | The state of the metrics VPC endpoint |
| <a name="output_processes_endpoint_arn"></a> [processes\_endpoint\_arn](#output\_processes\_endpoint\_arn) | ARN of the processes VPC endpoint |
| <a name="output_processes_endpoint_dns_entry"></a> [processes\_endpoint\_dns\_entry](#output\_processes\_endpoint\_dns\_entry) | DNS entries of the processes VPC endpoint |
| <a name="output_processes_endpoint_id"></a> [processes\_endpoint\_id](#output\_processes\_endpoint\_id) | ID of the processes VPC endpoint |
| <a name="output_processes_endpoint_network_interface_ids"></a> [processes\_endpoint\_network\_interface\_ids](#output\_processes\_endpoint\_network\_interface\_ids) | One or more network interfaces for the processes VPC endpoint |
| <a name="output_processes_endpoint_owner_id"></a> [processes\_endpoint\_owner\_id](#output\_processes\_endpoint\_owner\_id) | The ID of the AWS account that owns the processes VPC endpoint |
| <a name="output_processes_endpoint_state"></a> [processes\_endpoint\_state](#output\_processes\_endpoint\_state) | The state of the processes VPC endpoint |
| <a name="output_profiling_endpoint_arn"></a> [profiling\_endpoint\_arn](#output\_profiling\_endpoint\_arn) | ARN of the profiling VPC endpoint |
| <a name="output_profiling_endpoint_dns_entry"></a> [profiling\_endpoint\_dns\_entry](#output\_profiling\_endpoint\_dns\_entry) | DNS entries of the profiling VPC endpoint |
| <a name="output_profiling_endpoint_id"></a> [profiling\_endpoint\_id](#output\_profiling\_endpoint\_id) | ID of the profiling VPC endpoint |
| <a name="output_profiling_endpoint_network_interface_ids"></a> [profiling\_endpoint\_network\_interface\_ids](#output\_profiling\_endpoint\_network\_interface\_ids) | One or more network interfaces for the profiling VPC endpoint |
| <a name="output_profiling_endpoint_owner_id"></a> [profiling\_endpoint\_owner\_id](#output\_profiling\_endpoint\_owner\_id) | The ID of the AWS account that owns the profiling VPC endpoint |
| <a name="output_profiling_endpoint_state"></a> [profiling\_endpoint\_state](#output\_profiling\_endpoint\_state) | The state of the profiling VPC endpoint |
| <a name="output_traces_endpoint_arn"></a> [traces\_endpoint\_arn](#output\_traces\_endpoint\_arn) | ARN of the traces VPC endpoint |
| <a name="output_traces_endpoint_dns_entry"></a> [traces\_endpoint\_dns\_entry](#output\_traces\_endpoint\_dns\_entry) | DNS entries of the traces VPC endpoint |
| <a name="output_traces_endpoint_id"></a> [traces\_endpoint\_id](#output\_traces\_endpoint\_id) | ID of the traces VPC endpoint |
| <a name="output_traces_endpoint_network_interface_ids"></a> [traces\_endpoint\_network\_interface\_ids](#output\_traces\_endpoint\_network\_interface\_ids) | One or more network interfaces for the traces VPC endpoint |
| <a name="output_traces_endpoint_owner_id"></a> [traces\_endpoint\_owner\_id](#output\_traces\_endpoint\_owner\_id) | The ID of the AWS account that owns the traces VPC endpoint |
| <a name="output_traces_endpoint_state"></a> [traces\_endpoint\_state](#output\_traces\_endpoint\_state) | The state of the traces VPC endpoint |
