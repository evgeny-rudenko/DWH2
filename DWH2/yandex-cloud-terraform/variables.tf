variable "IAM_TOKEN" {}
  



variable "yandex_cloud_id" {
  type        = string
  default     = "b1gq4ddmfbcak78qjc94"
  description = "The ID of the cloud to apply any resources to"
}

variable "yandex_folder_id" {
  type        = string
  default     = "b1gr6e4j28lnpfj8se95"
  description = "The ID of the folder to operate under"
}

variable "clickhouse_password" {
  type        = string
  default ="ch_password"
  description = "Set up ClickHouse password"
}