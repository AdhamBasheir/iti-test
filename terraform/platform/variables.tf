variable "region" {
  type = string
  default = "us-east-1"
}


variable "bucket" {
  type = string
}

# variable "repo" {
#   type = string
# }

variable "monitoring_namespace" {
  default = "monitoring"
}

variable "prometheus_chart_version" {
  default = "59.0.0"
}
