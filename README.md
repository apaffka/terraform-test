## Проект домашнего задания SkillFactory Terraform

**Корневая директория проекта** - _sf_terraform_  
**Директория с модулями** - _modules_

Для запуска проекта вам потребуется отдельно сконфигурировать S3 хранилище,
предоставить статические ключи Access Key и Secret Key

Во время выполнения задания я столкнулся с трудностью при добавлении данных о 
созданных подсетях и IP-адресах в Target group.

Мною было принято решение вывести через output map(string) формата
```hcl
output "subnet_ip" {
  value = {
    for instance in module.ya_instance_create[*].instance :
    instance.network_interface[0].subnet_id => instance.network_interface[0].ip_address
  }
}
# subnet_ip = {
#   "gfuskshusgb11igf1" = "10.0.10.1"
#   "hfhkhbuigibi113gk" = "10.0.20.1"
# }
```

После первого прохода `terraform apply` значение будет сформировано и его вывод нужно
подставить в модуль в файле `lab_5_3_7.tf`
```hcl
module "ya_network_lb_create" {
  source      = "../modules/ya_network_lb_create"
  target_name = "skill-target"
  subnet_ip = {
    "gfuskshusgb11igf1" = "10.0.10.1"
    "hfhkhbuigibi113gk" = "10.0.20.1"
  }
}
```