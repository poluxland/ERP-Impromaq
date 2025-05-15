class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.medidas.subject
  #
  def medidas
    @greeting = "Reporte Impromaq medidas de silos y stock " + Time.now.in_time_zone('Santiago').to_s

    # Default recipients
    recipients = [
      "jorge.frez@msindustrial.cl",
      "jose.jerez@msindustrial.cl",
      "fernando.gonzalez@msindustrial.cl",
      "supervisor.envasadora@msindustrial.cl",
      "osvaldo.silva@meloncementos.cl",
      "jefesturno.planta@melon.cl",
      "pedro.guzman@meloncementos.cl",
      "renzo.allendes@meloncementos.cl",
      "alejandro.olivares@msindustrial.cl",
      "simon.rojas@msindustrial.cl",
      "sala.controlh9m21@melon.cl",
      "claudio.villanueva@msindustrial.cl",
      "marianelly.villarroel@meloncementos.cl",
      "orlando.belmar@meloncementos.cl",
      "marcos.prospero@msindustrial.cl",
      "gaston.guerrero@meloncementos.cl",
      "aldo.escobar@meloncementos.cl",
      "guillermo.roco@meloncementos.cl",
      "isabel.tapia@meloncementos.cl",
      "diego.garrido@meloncementos.cl",
      "aldo.baez@meloncementos.cl",
      "catalina.marchant-externo@meloncementos.cl",
      "mariapaz.cobo@meloncementos.cl",
      "Alejandra.castro@meloncementos.cl",
      "cristian.sotomayor@meloncementos.cl",
      "guillermo.roco@meloncementos.cl",
      "nicolas.arnau@meloncementos.cl",
      "orlando.vasquez@meloncementos.cl",
      "sebastian.caica@melonservicios.cl",
      "natalia.altimiras@melonservicios.cl",
      "luis.penailillo@msindustrial.cl",
      "valentina.gonzalez@melonservicios.cl",
      "javiera.gonzalezp@meloncementos.cl",
      "javiera.gonzalezp@meloncementos.cl",
      "patricio.vidal@meloncementos.cl",
      "maria.palacios@meloncementos.cl",
      "geraldinne.martinez@meloncementos.cl"
    ]

    # Check if the current time is in the morning (6 AM to 12 PM)
    current_hour = Time.now.in_time_zone('Santiago').hour
    if current_hour >= 5 && current_hour < 10
      recipients << "helmut.brandau@meloncementos.cl"
    end

    mail to: recipients.join(", "), subject: @greeting
  end

  def units
    @greeting = "Reporte Diesel " + Time.now.in_time_zone('Santiago').to_s

    mail to: "jose.jerez@msindustrial.cl, simon.rojas@msindustrial.cl, fernando.gonzalez@msindustrial.cl, supervisor.envasadora@msindustrial.cl, alejandro.olivares@msindustrial.cl, hernan.martinez@msindustrial.cl",  subject: @greeting
  end


  def soplados
    @greeting = "Reporte Soplado " + Time.now.in_time_zone('Santiago').to_s

    # Default recipients for soplados report
    recipients = [
      "diego.garrido@meloncementos.cl",
      "pedro.guzman@meloncementos.cl",
      "jose.jerez@msindustrial.cl",
      "alejandro.olivares@msindustrial.cl",
      "simon.rojas@msindustrial.cl",
      "fernando.gonzalez@msindustrial.cl",
      "guillermo.roco@meloncementos.cl",
      "jefesturno.planta@melon.cl",
      "supervisor.envasadora@msindustrial.cl",
      "marianelly.villarroel@meloncementos.cl",
      "gaston.guerrero@meloncementos.cl",
      "maryorie.fajardo@msindustrial.cl"
    ]

    # Check if the current time is in the morning (5 AM to 10 AM)
    current_hour = Time.now.in_time_zone('Santiago').hour
    if current_hour >= 5 && current_hour < 10
      recipients << "helmut.brandau@meloncementos.cl"
    end

    mail to: recipients.join(", "), subject: @greeting
  end

  def servicios
    @greeting = "Reporte Servicios " + Time.now.in_time_zone('Santiago').to_s

    mail to: "jose.jerez@msindustrial.cl, hernan.martinez@msindustrial.cl, fernando.gonzalez@msindustrial.cl, simon.rojas@msindustrial.cl",  subject: @greeting
  end

  def reports
    @greeting = "Reporte planta Puerto Montt " + Time.now.in_time_zone('Santiago').to_s

    mail to: "jose.jerez@msindustrial.cl, fernando.gonzalez@msindustrial.cl, julio.alvear@msindustrial.cl, martin.llancafil@meloncementos.cl, cesar.hernandez@meloncementos.cl, exequiel.moya@msindustrial.cl, camila.birke@msindustrial.cl, simon.rojas@msindustrial.cl",  subject: @greeting
  end

  def daily_equipos_report
  @date = Date.yesterday
  @equipos = Equipo.joins(:truck)
                   .where(created_at: @date.beginning_of_day..@date.end_of_day)
                   .where(trucks: { planta: "LCA" })

  mail(
    to: [
      "jose.jerez@msindustrial.cl",
      "simon.rojas@msindustrial.cl",
      "marcos.prospero@msindustrial.cl",
      "supervisor.envasadora@msindustrial.cl",
      "maryorie.fajardo@msindustrial.cl",
      "fernando.gonzalez@msindustrial.cl"
    ],
    subject: "Checklist LCA realizados el #{@date.strftime('%d-%m-%Y')}"
  )
  end

  def daily_equipos_report_ptm
  @date = Date.yesterday
  @equipos = Equipo.joins(:truck)
                   .where(created_at: @date.beginning_of_day..@date.end_of_day)
                   .where(trucks: { planta: "PTM" })

  mail(
    to: [
      "jose.jerez@msindustrial.cl",
      "simon.rojas@msindustrial.cl",
      "marcos.prospero@msindustrial.cl",
      "supervisor.envasadora@msindustrial.cl",
      "maryorie.fajardo@msindustrial.cl",
      "julio.alvear@msindustrial.cl",
      "victor.gallardo@msindustrial.cl",
      "pedro.pichaud@msindustrial.cl",
      "exequiel.moya@msindustrial.cl",
      "fernando.gonzalez@msindustrial.cl"
    ],
    subject: "Checklist PTM realizados el #{@date.strftime('%d-%m-%Y')}"
  )
end



def horas_pendientes_revision
  @date = Date.current
  @horas = Hora.where(
    estado: 'Pendiente revisión',
    fecha: @date.beginning_of_year..@date.end_of_year
  ).order(:fecha)

  mail(
    to: [
      "camila.birke@msindustrial.cl",
      "julio.alvear@msindustrial.cl",
      "fernando.gonzalez@msindustrial.cl",
      "jose.jerez@msindustrial.cl"
    ],
    subject: "Horas extras pendientes de revisión PTM"
  )
end




end
