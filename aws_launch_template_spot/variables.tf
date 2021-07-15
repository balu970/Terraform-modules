variable "name" {}
variable "image_id" {}
variable "instance_type" {
  description = "Instance type"
  default = "t2.xlarge"
}
variable "key_name" {}
variable "security_group" {}
variable "account_id" {}

variable "instance_profile_role_name" {
  default = "instance profile role name"
}

variable "user_data" {}

variable "Created_using" {
  default = null
}
variable "resource_type" {
  default = null
}