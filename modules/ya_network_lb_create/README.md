<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~>0.115.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | ~>0.115.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_lb_network_load_balancer.skill-balancer](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_network_load_balancer) | resource |
| [yandex_lb_target_group.skill-target](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_subnet_ip"></a> [subnet\_ip](#input\_subnet\_ip) | Defines subnets and IPs for created instances | `map(string)` | n/a | yes |
| <a name="input_target_name"></a> [target\_name](#input\_target\_name) | Give a name for target group | `string` | `"skill-test"` | no |
| <a name="input_target_zone"></a> [target\_zone](#input\_target\_zone) | Define zone for target group | `string` | `"ru-central1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group_id"></a> [target\_group\_id](#output\_target\_group\_id) | Share ID of created target group |
<!-- END_TF_DOCS -->