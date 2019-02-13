variable "access_key" {
  description = "AWS IAM user access key ID, needs to be created by user using AWS Console and give admin access"
}

variable "secret_key" {
  description = "AWS IAM user access key Secret (provided by AWS)"
}

variable "region" {
  description = "AWS region (can be us-east-1)"
}

variable "dbuser" {
  description = "Database user name"
}

variable "dbpassword" {
  description = "Database user password (please make it a complex one!!)"
}

variable "dbversion" {
  description = "Database engine version (9.6 recomended)"
}

variable "ssh_key" {
  description = "AWS EC2 SSH key name (needs to be created by user in console)"
}

variable "ssh_key_path" {
  description = "absolute path of .pem file given by AWS (/path_to_file/file.pem), keep in mind that this key will be the only ssh access to this server, so keep it in a safe place"
}

variable "odooversion" {
  description = "Odoo version to install (it can be 11.0 or 12.0)"
}