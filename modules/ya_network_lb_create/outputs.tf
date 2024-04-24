# Share ID of created target group
output "target_group_id" {
  value = yandex_lb_target_group.skill-target.id
}