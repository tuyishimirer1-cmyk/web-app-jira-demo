terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.3"
    }
  }
}

provider "local" {}

# Declare local variable first
locals {
  app_code = <<EOT
console.log("Hello from Terraform-created web app!");
EOT
}

# Then declare the resource using that local
resource "local_file" "webapp_app" {
  filename = "${path.module}/webapp/index.js"  # change path as needed
  content  = local.app_code
}


