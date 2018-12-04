// Heroku

provider "heroku" 
{
  email = "${var.heroku_email}"
  api_key = "${var.heroku_api}"
}

variable "heroku_email" {
  type = "string"
}

variable "heroku_api" {
  type = "string"
}
