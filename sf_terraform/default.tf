terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.116.0"
    }
  }
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "sf-storage-state"
    region                      = "ru-central1-a"
    key                         = "pavel/key/infra.tfstate"
    access_key                  = "@secret"
    secret_key                  = "@secret"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = "/Users/pavel/Documents/skill_authorized_key.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
}
