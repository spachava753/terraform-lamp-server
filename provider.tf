provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.credentials_path}"
  profile                 = "${var.profile}"
}