module "agent_data" {
  source     = "../../modules/agent-registry-agent"
  project_id = var.project_id
  location   = "us-central1"
  agent_id   = "existing-test-agent"
}

output "agent_id" { value = module.agent_data.agent_id }
