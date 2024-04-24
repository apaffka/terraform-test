<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | ~>0.115.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ya_instance_create"></a> [ya\_instance\_create](#module\_ya\_instance\_create) | ../modules/ya_instance_create/ | n/a |
| <a name="module_ya_network_create"></a> [ya\_network\_create](#module\_ya\_network\_create) | ../modules/ya_network_create | n/a |
| <a name="module_ya_network_lb_create"></a> [ya\_network\_lb\_create](#module\_ya\_network\_lb\_create) | ../modules/ya_network_lb_create | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_id"></a> [cloud\_id](#input\_cloud\_id) | Define Cloud Id | `string` | `"b1grn1g6k3qfh9re8san"` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | Define Folder Id | `string` | `"b1go6ongjivllnpt0qi9"` | no |
| <a name="input_instance_image_family"></a> [instance\_image\_family](#input\_instance\_image\_family) | n/a | `list(string)` | <pre>[<br>  "lamp",<br>  "lemp"<br>]</pre> | no |
| <a name="input_instance_user"></a> [instance\_user](#input\_instance\_user) | n/a | `string` | `"pavel"` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `list(string)` | <pre>[<br>  "ru-central1-a",<br>  "ru-central1-b"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip) | Output instances IPs |
| <a name="output_instance_subnet"></a> [instance\_subnet](#output\_instance\_subnet) | Output instances subnets |
| <a name="output_security_group"></a> [security\_group](#output\_security\_group) | Output created security group |
| <a name="output_subnet_ip"></a> [subnet\_ip](#output\_subnet\_ip) | Output map data with subnets and IPs, that data is needed for correct target group creation |
<!-- END_TF_DOCS -->