variable "name" {
  description = "Kubernetes namespace name"
  type        = string
  nullable    = false
}

variable "namespace" {
  description = "Namespace defines the space within which name of the secret must be unique"
  type        = string
  nullable    = false
}

variable "data" {
  description = "Data contains the configuration data"
  type        = map(string)
  default     = {}
}

variable "labels" {
  description = "Map of string keys and values that can be used to organize and categorize the secret"
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = "An unstructured key value map stored with the secret that may be used to store arbitrary metadata"
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "The secret type"
  type        = string
  default     = "Opaque"
  validation {
    condition     = contains(["Opaque", "kubernetes.io/service-account-token", "kubernetes.io/dockercfg", "kubernetes.io/dockerconfigjson"], var.type)
    error_message = "Valid values for instance mode are 'Opaque' or 'kubernetes.io/service-account-token' or 'kubernetes.io/dockercfg' or 'kubernetes.io/dockerconfigjson'."
  }
}

variable "immutable" {
  description = "Ensures that data stored in the Secret cannot be updated"
  type        = bool
  default     = false
}
