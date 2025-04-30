ActionMailer::Base.delivery_method       = :smtp
ActionMailer::Base.perform_deliveries    = true
ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  address:              'smtp.office365.com',
  port:                 587,
  domain:               'outlook.com',
  user_name:            ENV['OUTLOOK_USER'],    # impromaq.ltda@outlook.com
  password:             ENV['OUTLOOK_PASS'],    # la App Password de Microsoft
  authentication:       :login,
  enable_starttls_auto: true
}
