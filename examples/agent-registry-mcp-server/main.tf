# Example configuration for testing the MCP Server module
module "mcp_server" {
  source     = "../../modules/agent-registry-mcp-server"
  project_id = var.project_id
  location   = "us-central1"
  
  # A filter used to discover a specific MCP server (e.g., by URN)
  filter     = "mcpServerId:\"urn:mcp:googleapis.com:projects:${var.project_id}:locations:global:bigquery\""
}

output "mcp_server_id" {
  value = module.mcp_server.mcp_server_id
}
