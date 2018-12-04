resource "heroku_app" "development" {
  name = "cyr-dev-app"
  region = "eu"

  buildpacks = [
    "heroku/go"
  ]
}

resource "heroku_addon" "development" {
  app  = "${heroku_app.development.name}"
  plan = "heroku-postgresql:hobby-dev"
}
