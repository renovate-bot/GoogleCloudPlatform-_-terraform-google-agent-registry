variable "project_id" {
  description = "The GCP project ID where the Agent Registry resources will be tested."
  type        = string
}

variable "random_string" {
  description = "A random string used to ensure resource names are unique across test runs."
  type        = string
  default     = "test"
}
