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
| [yandex_compute_instance.skill-instance](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/compute_instance) | resource |
| [yandex_compute_image.instance-image](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/compute_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cores"></a> [cores](#input\_cores) | Defines how many CPUs for an instance will be (min 2, max 96) | `number` | `2` | no |
| <a name="input_instance_image_family"></a> [instance\_image\_family](#input\_instance\_image\_family) | Defines an image for creating an instance | `string` | n/a | yes |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | Name for an instance will start from that | `string` | `"instance"` | no |
| <a name="input_instance_user"></a> [instance\_user](#input\_instance\_user) | User with that name will be created into an instance | `string` | `"skillfactory"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Defines how many RAM for an instance will be (min 2, max 32) | `number` | `2` | no |
| <a name="input_security_group"></a> [security\_group](#input\_security\_group) | Defines network security groups an instance will be | `set(string)` | n/a | yes |
| <a name="input_ssh_key_path"></a> [ssh\_key\_path](#input\_ssh\_key\_path) | Defines path to ssh public key to have access to created instance | `string` | `"~/.ssh/id_rsa.pub"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Defines a subnet id, an instance has IP from that subnet | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Defines a zone where an instance will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | Stare all the data about created instances |
| <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip) | Share the list of string IPs of created instances |
| <a name="output_instance_subnet"></a> [instance\_subnet](#output\_instance\_subnet) | Share the list of string Subnets of created instances |
<!-- END_TF_DOCS -->