
resource "aws_autoscaling_group" "asg_spot" {
  availability_zones        = var.availability_zones
  name_prefix               = "${var.name}_asg"
  termination_policies      = ["Default"]
  enabled_metrics           = ["GroupTerminatingInstances", "GroupMaxSize", "GroupDesiredCapacity", "GroupPendingInstances", "GroupInServiceInstances", "GroupMinSize", "GroupTotalInstances"]
  max_size                  = var.asg_max_size
  min_size                  = var.asg_min_size
  default_cooldown          = var.default_cooldown
  desired_capacity          = var.asg_desired_capacity
  health_check_grace_period = var.health_check_grace_period
  health_check_type         = var.health_check_type
  vpc_zone_identifier       = var.vpc_zone_identifier
  target_group_arns            = var.target_group_arns
  force_delete              = true
  protect_from_scale_in     = true
  mixed_instances_policy {
    instances_distribution {
      on_demand_percentage_above_base_capacity = 50
      spot_allocation_strategy                 = "capacity-optimized"
      on_demand_base_capacity                  = var.on_demand_base_capacity
    }
    launch_template {
      launch_template_specification {
        launch_template_id = var.launch_template_id
        version            = "$Latest"
      }
      override {
        instance_type     = var.instance_type5
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type6
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type7
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type8
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type9
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type10
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type11
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type12
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type13
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type14
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type15
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type16
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type17
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type18
        weighted_capacity = var.weighted_capacity
      }
      override {
        instance_type     = var.instance_type19
        weighted_capacity = var.weighted_capacity
      }
    }
  }

  lifecycle {
    create_before_destroy = "true"
    ignore_changes        = [desired_capacity, min_size]
  }

  tag {
    key                 = "Environment"
    value               = var.environment
    propagate_at_launch = "true"
  }

  tag {
    key                 = "Name"
    value               = var.name
    propagate_at_launch = "true"
  }
  dynamic "tag" {
    for_each = var.tag
    content {
      key                 = lookup(tag.value, "key", [])
      propagate_at_launch = lookup(tag.value, "propagate_at_launch", [])
      value               = lookup(tag.value, "value", [])
    }
  }
}
