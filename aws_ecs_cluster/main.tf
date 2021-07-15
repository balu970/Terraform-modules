
resource "aws_ecs_cluster" "ecs_cluster" {
  name = var.name
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
    tags = merge(
    var.common_tags,
    map("Classification", "private"),
    map("Name", var.environment)
  )
}