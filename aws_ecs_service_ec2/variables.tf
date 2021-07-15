variable "name" {
  description = "Name of application"
}
variable "common_tags" {
  type = map(string)
}
variable "environment" {
  description = "Name of the environment"
}
variable "cluster_id" {
  description = "ARN of an ECS cluster"
}
variable "task_definition_arn" {
  description = "Full ARN of the task definition that you want to run in your service."
}
variable "desired_count" {
  description = "desired count"
}
variable "lb_tg_arn" {
  description = "LB target group arn"
}
variable "port" {
  description = "Container port"
}
variable "aws_alb" {
  description = "aws_alb"
}
variable "ecs_iam_role" {
  description = "ecs_iam_role"
  default     = null
}
variable "force_new_deployment" {
  description = "Enable to force a new task deployment of the service"
  default     = null
}

variable "capacity_provider" {
  default = null
}
variable "weight" {
  default = null
}
