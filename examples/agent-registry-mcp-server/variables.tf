variable "project_id" {
  description = "The GCP project ID where the Agent Registry is enabled."
  type        = string
}

variable "random_string" {
  description = "A random string to ensure resource uniqueness during tests."
  type        = string
  default     = "test"
}
