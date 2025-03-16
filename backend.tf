terraform {
  backend "s3" {
    endpoint   = "https://storage.yandexcloud.net"
    bucket     = "bucket-tfstate"
    region     = "ru-central1"
    key        = "infra-k8s/terraform.tfstate"
    access_key = "${{ secrets.AWS_ACCESS_KEY_ID }}"
    secret_key = "${{ secrets.AWS_SECRET_ACCESS_KEY }}"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true 
    skip_s3_checksum            = true 
  }
}
