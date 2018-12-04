resource "heroku_app" "staging" {
  name = "cyr-stage-app"
  region = "eu"

  buildpacks = [
    "heroku/go"
  ]
}

resource "heroku_addon" "staging" {
  app  = "${heroku_app.staging.name}"
  plan = "heroku-postgresql:hobby-dev"
}
