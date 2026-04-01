# examples/agent-registry-service/main.tf

module "agent_registry_service" {
  source     = "../../modules/agent-registry-service"
  project_id = var.project_id
  location   = "us-central1"
  service_id = "test-service-${var.random_string}"
  interfaces = [
  {"protocol_binding" = "HTTP_JSON", "url" = "https://api.stripe.com"}]
  endpoint_spec = {
    type = "NO_SPEC"
  }
}