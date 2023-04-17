class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.medidas.subject
  #
  def medidas
    @greeting = "Reporte Impromaq medidas de silos y stock"

    mail to: "jorge.frez@msindustrial.cl, jose.jerez@msindustrial.cl, fernando.gonzalez@msindustrial.cl, supervisor.envasadora@msindustrial.cl, osvaldo.silva@meloncementos.cl, jefesturno.planta@melon.cl, abigail.bustos@meloncementos.cl, rodrigo.trigo@meloncementos.cl, renzo.allendes@meloncementos.cl, alejandro.olivares@msindustrial.cl, luis.estay@meloncementos.cl, sala.controlh9m21@melon.cl, carlos.gonzalezm@meloncementos.cl, claudio.villanueva@msindustrial.cl, marianelly.villarroel@meloncementos.cl, orlando.belmar@meloncementos.cl, fiorella.cosmelli@meloncementos.cl, marcos.prospero@msindustrial.cl, gaston.guerrero@meloncementos.cl, aldo.escobar@meloncementos.cl, guillermo.roco@meloncementos.cl, roberto.leiva@meloncementos.cl", subject: @greeting
  end

  def units
    @greeting = "Reporte Diesel " + Time.now.to_s

    mail to: "jose.jerez@msindustrial.cl, simon.rojas@msindustrial.cl, fernando.gonzalez@msindustrial.cl",  subject: @greeting
  end


def soplados
    @greeting = "Reporte Soplado " + Time.now.to_s

    mail to: "jose.jerez@msindustrial.cl, alejandro.olivares@msindustrial.cl, fernando.gonzalez@msindustrial.cl",  subject: @greeting
  end

end
