variable "name" {
  description = "Name of this account"
}

variable "email" {
  description = "Email to be used in services like Guardduty"
}

variable "guardduty" {
  default     = true
  description = "Enable/Disables guardduty"
}

variable "master_account_id" {
  description = "Master account ID"
}

variable "guardduty_detector_id" {
  description = "GuardDuty detector ID"
}