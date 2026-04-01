module "service_prereq" {
  source     = "../../modules/agent-registry-service"
  project_id = var.project_id
  location   = "us-central1"
  service_id = "test-endpoint-${var.random_string}"
  endpoint_spec = {
    type = "NO_SPEC"
  }
}

module "endpoint_data" {
  source      = "../../modules/agent-registry-endpoint"
  project_id  = var.project_id
  location    = "us-central1"
  endpoint_id = module.service_prereq.service_id
}

output "endpoint_uri" { value = module.endpoint_data.endpoint_id }
