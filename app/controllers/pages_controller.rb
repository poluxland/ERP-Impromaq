class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]


  def home
    @trucks = Truck.includes(:checklists, :equipos, :interventions)
                   .where.not(planta: 'X')

    meses = (0..3).map { |i| Date.today.beginning_of_month - i.month }

    # En ejecución por planta
    @ventas_en_ejecucion = Trabajo
      .where(avance: "En ejecucción")
      .group(:planta)
      .sum(:total)

    # Terminados y facturados, agrupados por planta y mes de fecha_termino
    trabajos_finalizados = Trabajo
      .where(avance: ["Terminado", "Facturado"])
      .where(fecha_termino: meses.min..Date.today.end_of_month)

    @ventas_por_mes = trabajos_finalizados
      .group_by { |t| [t.planta.to_s.strip, t.fecha_termino.beginning_of_month] }
      .transform_values { |ts| ts.sum(&:total) }
  end

 def reporte
  @prodhaver_tm = Medida.where(turno: "TM").group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tt = Medida.where(turno: "TT").group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tn = Medida.where(turno: "TN").group_by_day(:created_at).sum(:prodhaver)

  @prodhaver_avg_tm = Medida.where(turno: "TM").average(:prodhaver)
  @prodhaver_avg_tt = Medida.where(turno: "TT").average(:prodhaver)
  @prodhaver_avg_tn = Medida.where(turno: "TN").average(:prodhaver)

  @ultima_medida = Medida.order(:created_at).last
  @ultimo_especialsacos = @ultima_medida.try(:especialsacos)
  @ultimo_bigbagextra  = @ultima_medida.try(:bigbagextra)
  @ultimo_extrsacos    = @ultima_medida.try(:extrsacos)

  @promedio_especialsacos = Medida.average(:especialsacos)
  @promedio_bigbagextra  = Medida.average(:bigbagextra)
  @promedio_extrsacos    = Medida.average(:extrsacos)

  @ultima_soplado = Soplado.order(:created_at).last
  @ultimo_presion3 = @ultima_soplado.try(:presion3)
  @ultimo_presion4 = @ultima_soplado.try(:presion4)
  @ultimo_presion5 = @ultima_soplado.try(:presion5)
  @ultimo_horno     = @ultima_soplado.try(:horno)

  @promedio_presion3 = Soplado.average(:presion3)
  @promedio_presion4 = Soplado.average(:presion4)
  @promedio_presion5 = Soplado.average(:presion5)
  @promedio_horno    = Soplado.average(:horno)


   # Rango del mes actual
  current_month_range = Time.current.beginning_of_month..Time.current.end_of_month

  # Suponiendo que cada equipo es un Truck que tiene_many :checklists
  @equipos_consumo = Truck.includes(:checklists).map do |truck|
    truck_checklists = truck.checklists
    current_month_checklists = truck_checklists.where(created_at: current_month_range)

    promedio_mensual = current_month_checklists.average(:combustible)
    consumido_mes   = current_month_checklists.sum(:combustible)
    ultimo_valor    = truck_checklists.order(:created_at).last.try(:combustible)

    { equipo: truck, promedio_mensual: promedio_mensual, consumido_mes: consumido_mes, ultimo_valor: ultimo_valor }
  end
end




end
