output "project_id" {
  description = "The project ID used for the test."
  value       = var.project_id
}

output "location" {
  description = "The region used for the test."
  value       = "us-central1"
}

output "id" {
  description = "The ID of the provisioned service."
  value       = module.agent_registry_service.id
}