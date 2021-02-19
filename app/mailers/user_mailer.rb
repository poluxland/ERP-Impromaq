class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.medidas.subject  d
  #
  def medidas
    @greeting = "Medidas " + Time.now.to_s

    mail to: "ignacio.sierra@msindustrial.cl, jose.jerez@msindustrial.cl, fernando.gonzalez@msindustrial.cl, supervisor.envasadora@msindustrial.cl, osvaldo.silva@meloncementos.cl, jefesturno.planta@melon.cl, abigail.bustos@meloncementos.cl, gustavo.villanueva@msindustrial.cl, renzo.allendes@meloncementos.cl, alejandro.olivares@msindustrial.cl, luis.estay@meloncementos.cl, sala.controlh9m21@melon.cl, ignacio.sierra@msindustrial.cl, claudio.villanueva@msindustrial.cl, marianelly.villarroel@meloncementos.cl, orlando.belmar@meloncementos.cl, fiorella.cosmelli@meloncementos.cl, gerald.betancur@meloncementos.cl, claudio.villanueva@msindustrial.cl", subject: @greeting
  end
end
