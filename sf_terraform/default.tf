# Initialize Terraform
## version of Terraform 1.5.7 or higher
### Yandex cloud provider version 0.115.0 or higher in minor
terraform {
  required_version = ">= 1.5.7"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~>0.115.0"
    }
  }
  ## S3 storage was created at separate repo.
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "sf-storage-state"
    region   = "ru-central1-a"
    key      = "pavel/key/infra.tfstate"
    #    access_key                  = your access key or input at terraform apply
    #    secret_key                  = your access key or input at terraform apply
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = "/Users/pavel/Documents/skill_authorized_key.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = "ru-central1-a"
}
