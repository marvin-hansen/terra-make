output "cluster_name" {
  description = "Cluster name"
  value       = module.gke.name
}

output "client_token" {
  description = "The bearer token for auth"
  sensitive   = true
  value       = base64encode(data.google_client_config.default.access_token)
}

output "service_account" {
  description = "The default service account used for running nodes."
  value       = module.gke.service_account
}

output "kubernetes_endpoint" {
  description = "The cluster endpoint"
  sensitive   = true
  value       = module.gke.endpoint
}

output "network_name" {
  description = "The name of the VPC being created"
  value       = module.gcp-network.network_name
}

output "subnet_name" {
  description = "The name of the subnet being created"
  value       = module.gcp-network.subnets_names
}

output "subnet_secondary_ranges" {
  description = "The secondary ranges associated with the subnet"
  value       = module.gcp-network.subnets_secondary_ranges
}