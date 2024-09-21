variable "app_name" {
  description = "The name of the application for which the secrets are being stored."
  type        = string
  nullable    = false

  validation {
    condition     = length(var.app_name) > 0
    error_message = "The app name must not be empty"
  }
  validation {
    condition     = length(var.app_name) < 36
    error_message = "The app name must be less than 36 characters"
  }
  validation {
    condition     = length(var.app_name) > 3
    error_message = "The app name must be greater than 3 characters"
  }
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]*$", var.app_name))
    error_message = "The app name must contain only alphanumeric characters and dashes"
  }
  validation {
    condition     = can(regex("^[a-zA-Z].+", var.app_name))
    error_message = "The app name must start with an alpha character"
  }
}

variable "secret_name" {
  description = "The name of the secret being stored."
  type        = string
  validation {
    condition     = length(var.secret_name) > 0
    error_message = "The secret name must not be empty."
  }
  validation {
    condition     = length(var.secret_name) < 64
    error_message = "The secret name must be less than 64 characters."
  }
  validation {
    condition     = can(regex("^[a-zA-Z0-9-]*$", var.secret_name))
    error_message = "The secret name must contain only alphanumeric characters and dashes"
  }

}

variable "secret_value" {
  description = "The value of the secret being stored."
  type        = string
  sensitive   = true
  validation {
    condition     = length(var.secret_value) > 0
    error_message = "The secret value must not be empty."
  }
  validation {
    condition     = length(var.secret_value) < 5120
    error_message = "The secret value must be less than 5120 characters."
  }

}

variable "project_name" {
  description = "The project id for the vault secrets app"
  type        = string
  validation {
    condition     = can(regex("^(sales-dept|service-dept|marketing-dept|engineering-dept|finance-dept)$", var.project_name))
    error_message = "Invalid project selected, only allowed projects are: 'sales-dept', 'service-dept', 'marketing-dept', 'engineering-dept', 'finance-dept'"
  }
}