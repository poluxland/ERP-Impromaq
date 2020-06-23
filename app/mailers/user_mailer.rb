class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.medidas.subject
  #
  def medidas
    @greeting = "Hi"

    mail to: "ignacio.sierra@msindustrial.cl"
  end
end
