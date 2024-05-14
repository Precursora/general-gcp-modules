# ReCaptcha enterprise creation
resource "google_recaptcha_enterprise_key" "recaptcha" {
  labels        = var.labels
  project       = var.project_name
  display_name  = var.recaptcha_name

  web_settings {
    integration_type  = "SCORE"
    allow_all_domains = false
    allowed_domains   = var.recaptcha_allowed_domains
  }
}

# ReCaptcha enterprise site key secret creation
module "recaptcha_site_key" {
  source        = "../secret"
  labels        = var.labels
  project_name  = var.project_name
  secret_name   = "${var.recaptcha_name}-site-key"
  secret_value  = reverse(split("/", google_recaptcha_enterprise_key.recaptcha.id))[0]
}
