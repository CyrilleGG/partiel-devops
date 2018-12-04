resource "heroku_app" "production" {
  name = "cyr-prod-app"
  region = "eu"

  buildpacks = [
    "heroku/go"
  ]
}

resource "heroku_addon" "production" {
  app  = "${heroku_app.production.name}"
  plan = "heroku-postgresql:hobby-dev"
}
