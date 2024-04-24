# Add module to create project networks
module "ya_network_create" {
  source = "../modules/ya_network_create"
}

# Add module to create project instances
module "ya_instance_create" {
  count                 = length(var.instance_image_family)
  zone                  = element(var.zone, count.index)
  source                = "../modules/ya_instance_create/"
  instance_name         = "skill"
  instance_image_family = element(var.instance_image_family, count.index)
  instance_user         = var.instance_user
  security_group        = module.ya_network_create.security_group
  subnet_id             = module.ya_network_create.subnets_ids[count.index]
}

# Add module for Load Balancer and Target grop creation
module "ya_network_lb_create" {
  source      = "../modules/ya_network_lb_create"
  target_name = "skill-target"
  ### DISCLAIMER ###
  # Я не нашёл способа передать в переменную map с подсетями и IP
  # Поэтому сначала отрабатываем без них, в выходе получаем output "subnet_ip"
  # Подставляем значения в переменную и всё будет работать
  # Если есть способ передать сразу, то буду очень рад узнать
  subnet_ip = {
  }
}