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
  # ==============================
  # A) PRODUCCIÓN DIARIA POR EQUIPO Y TURNO
  # ==============================

# Filtrar lunes a viernes (wday: 1..5)
scope_tm = Medida.where(turno: "TM").where("EXTRACT(DOW FROM created_at) BETWEEN 1 AND 5")
scope_tt = Medida.where(turno: "TT").where("EXTRACT(DOW FROM created_at) BETWEEN 1 AND 5")
scope_tn = Medida.where(turno: "TN").where("EXTRACT(DOW FROM created_at) BETWEEN 1 AND 5")


  # Haver diario por turno
  @prodhaver_tm = scope_tm.group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tt = scope_tt.group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tn = scope_tn.group_by_day(:created_at).sum(:prodhaver)

  # Ventomatic diario por turno
  @prodvento_tm = scope_tm.group_by_day(:created_at).sum(:prodvento)
  @prodvento_tt = scope_tt.group_by_day(:created_at).sum(:prodvento)
  @prodvento_tn = scope_tn.group_by_day(:created_at).sum(:prodvento)

  # Bigbag diario por turno
  @prodbb_tm = scope_tm.group_by_day(:created_at).sum(:prodbb)
  @prodbb_tt = scope_tt.group_by_day(:created_at).sum(:prodbb)
  @prodbb_tn = scope_tn.group_by_day(:created_at).sum(:prodbb)

  # Promedios diarios por turno y equipo
  @prodhaver_avg_tm = scope_tm.average(:prodhaver)
  @prodhaver_avg_tt = scope_tt.average(:prodhaver)
  @prodhaver_avg_tn = scope_tn.average(:prodhaver)

  @prodvento_avg_tm = scope_tm.average(:prodvento)
  @prodvento_avg_tt = scope_tt.average(:prodvento)
  @prodvento_avg_tn = scope_tn.average(:prodvento)

  @prodbb_avg_tm = scope_tm.average(:prodbb)
  @prodbb_avg_tt = scope_tt.average(:prodbb)
  @prodbb_avg_tn = scope_tn.average(:prodbb)

  # ==============================
  # B) ÚLTIMA MEDIDA + ENVASADORA
  # ==============================

  @ultima_medida = Medida.order(:created_at).last
  @ultimo_especialsacos = @ultima_medida.try(:especialsacos)
  @ultimo_bigbagextra   = @ultima_medida.try(:bigbagextra)
  @ultimo_extrsacos     = @ultima_medida.try(:extrsacos)

  @promedio_especialsacos = Medida.average(:especialsacos)
  @promedio_bigbagextra   = Medida.average(:bigbagextra)
  @promedio_extrsacos     = Medida.average(:extrsacos)

  # ==============================
  # C) INDICADORES MENSUALES AÑO
  # ==============================

  @year = (params[:year] || Time.current.year).to_i
  range_year = Date.new(@year).all_year

  medidas_year     = Medida.where(created_at: range_year).order(:created_at)
  medidas_by_month = medidas_year.group_by { |m| m.created_at.to_date.beginning_of_month }

  # ---- Stocks promedio por mes ----
  @stock_extra_prom    = {}
  @stock_especial_prom = {}
  @stock_s3300_prom    = {}
  @stock_s4200_prom    = {}
  @stock_total_prom    = {}

  # ---- Producción mensual promedio por turno y equipo ----
  @prodhaver_tm_month  = {}
  @prodhaver_tt_month  = {}
  @prodhaver_tn_month  = {}

  @prodvento_tm_month  = {}
  @prodvento_tt_month  = {}
  @prodvento_tn_month  = {}

  @prodbb_tm_month     = {}
  @prodbb_tt_month     = {}
  @prodbb_tn_month     = {}

  # ---- Producción mensual total por equipo (sumando turnos) ----
  @prodhaver_month = {}
  @prodvento_month = {}
  @prodbb_month    = {}

  # ---- Horas de funcionamiento mensuales (total por equipo) ----
  @horas_haver_month   = {}
  @horas_vento_month   = {}
  @horas_bigbag_month  = {}

    # ---- Producción por hora (mensual) ----
  @prod_haver_por_hora_month = {}
  @prod_vento_por_hora_month = {}
  @prod_bb_por_hora_month    = {}

  # ---- % de utilización mensual (horas reales vs 8 h por turno) ----
  @util_haver_month = {}
  @util_vento_month = {}
  @util_bb_month    = {}


    # ---- Despachos totales mensuales (sumas) ----
  @desp_especial_sacos_month  = {}
  @desp_extra_sacos_month     = {}
  @desp_especial_bigbag_month = {}
  @desp_extra_bigbag_month    = {}
  @desp_especial_granel_month = {}
  @desp_extra_granel_month    = {}
  @desp_s3300_granel_month    = {}
  @desp_s4200_granel_month    = {}


  medidas_by_month.each do |month, medidas|
    # Stocks (usan los métodos del modelo Medida)
    @stock_extra_prom[month]    = avg(medidas.map(&:stock_extra_ton))
    @stock_especial_prom[month] = avg(medidas.map(&:stock_especial_ton))
    @stock_s3300_prom[month]    = avg(medidas.map(&:stock_s3300_ton))
    @stock_s4200_prom[month]    = avg(medidas.map(&:stock_s4200_ton))
    @stock_total_prom[month]    = avg(medidas.map(&:stock_total_ton))

    # Agrupar por turno
    por_turno = medidas.group_by(&:turno)
    tm = por_turno["TM"] || []
    tt = por_turno["TT"] || []
    tn = por_turno["TN"] || []

# Producción promedio mensual por turno (Haver)
@prodhaver_tm_month[month] = avg_no_zero(tm.map { |m| m.prodhaver })
@prodhaver_tt_month[month] = avg_no_zero(tt.map { |m| m.prodhaver })
@prodhaver_tn_month[month] = avg_no_zero(tn.map { |m| m.prodhaver })

# Producción promedio mensual por turno (Ventomatic)
@prodvento_tm_month[month] = avg_no_zero(tm.map { |m| m.prodvento })
@prodvento_tt_month[month] = avg_no_zero(tt.map { |m| m.prodvento })
@prodvento_tn_month[month] = avg_no_zero(tn.map { |m| m.prodvento })

# Producción promedio mensual por turno (Bigbag)
@prodbb_tm_month[month] = avg_no_zero(tm.map { |m| m.prodbb })
@prodbb_tt_month[month] = avg_no_zero(tt.map { |m| m.prodbb })
@prodbb_tn_month[month] = avg_no_zero(tn.map { |m| m.prodbb })


  # 🔴 AQUÍ cambiamos: ahora sí total mensual real
  @prodhaver_month[month] = medidas.sum { |m| m.prodhaver.to_i }
  @prodvento_month[month] = medidas.sum { |m| m.prodvento.to_i }
  @prodbb_month[month]    = medidas.sum { |m| m.prodbb.to_i }


    # Horas de funcionamiento por equipo (sumando turnos)
    haver_tm_h = tm.sum { |m| m.horas_haver.to_f }
    haver_tt_h = tt.sum { |m| m.horas_haver.to_f }
    haver_tn_h = tn.sum { |m| m.horas_haver.to_f }

    vento_tm_h = tm.sum { |m| m.horas_vento.to_f }
    vento_tt_h = tt.sum { |m| m.horas_vento.to_f }
    vento_tn_h = tn.sum { |m| m.horas_vento.to_f }

    bb_tm_h    = tm.sum { |m| m.horas_bigbag.to_f }
    bb_tt_h    = tt.sum { |m| m.horas_bigbag.to_f }
    bb_tn_h    = tn.sum { |m| m.horas_bigbag.to_f }

    @horas_haver_month[month]  = haver_tm_h + haver_tt_h + haver_tn_h
    @horas_vento_month[month]  = vento_tm_h + vento_tt_h + vento_tn_h
    @horas_bigbag_month[month] = bb_tm_h    + bb_tt_h    + bb_tn_h


        # =========================
    # Producción por hora (unid/hora)
    # =========================
    @prod_haver_por_hora_month[month] =
  safe_div(@prodhaver_month[month], @horas_haver_month[month])

@prod_vento_por_hora_month[month] =
  safe_div(@prodvento_month[month], @horas_vento_month[month])

@prod_bb_por_hora_month[month] =
  safe_div(@prodbb_month[month], @horas_bigbag_month[month])


    # =========================
    # % de utilización (horas reales vs 8h por turno)
    # =========================
    turnos_mes = medidas.size                 # 1 Medida = 1 turno
    capacidad_horas_mes = turnos_mes * 8.0   # 8 horas posibles por turno

    @util_haver_month[month] =
      safe_pct(@horas_haver_month[month], capacidad_horas_mes)

    @util_vento_month[month] =
      safe_pct(@horas_vento_month[month], capacidad_horas_mes)

    @util_bb_month[month] =
      safe_pct(@horas_bigbag_month[month], capacidad_horas_mes)



        # Despachos: usar los métodos del modelo
    @desp_especial_sacos_month[month]  = medidas.sum(&:desp_especial_sacos_ton)
    @desp_extra_sacos_month[month]     = medidas.sum(&:desp_extra_sacos_ton)
    @desp_especial_bigbag_month[month] = medidas.sum(&:desp_especial_bigbag_ton)
    @desp_extra_bigbag_month[month]    = medidas.sum(&:desp_extra_bigbag_ton)
    @desp_especial_granel_month[month] = medidas.sum(&:desp_especial_granel_ton)
    @desp_extra_granel_month[month]    = medidas.sum(&:desp_extra_granel_ton)
    @desp_s3300_granel_month[month]    = medidas.sum(&:desp_s3300_granel_ton)
    @desp_s4200_granel_month[month]    = medidas.sum(&:desp_s4200_granel_ton)


  end
end





private

def avg(values)
  values = values.compact.map(&:to_f)
  return 0 if values.empty?
  (values.sum / values.size).round(0)
end

def safe_div(num, den)
  den = den.to_f
  return 0 if den == 0
  (num.to_f / den).round(2)
end

def safe_pct(num, den)
  den = den.to_f
  return 0 if den == 0
  ((num.to_f / den) * 100).round(1)
end



end

def avg(values)
  values = values.compact.map(&:to_f)
  return 0 if values.empty?
  (values.sum / values.size).round(0)
end

def avg_no_zero(values)
  values = values.compact.map(&:to_f).reject { |v| v.zero? }
  return 0 if values.empty?
  (values.sum / values.size).round(0)
end

def safe_div(num, den)
  den = den.to_f
  return 0 if den == 0
  (num.to_f / den).round(2)
end

def safe_pct(num, den)
  den = den.to_f
  return 0 if den == 0
  ((num.to_f / den) * 100).round(1)
end