class Medida < ApplicationRecord
  validates :turno, :enjuagues_super, :enjuagues_super4, :plastificado_especial, :plastificado_especial_lados,
            :plastificado_especial_zunchos, :plastificado_extra,
            :plastificado_extra_zunchos, :especial_sacos, :especial_bigbag,
            :especial_granel, :extra_sacos, :extra_bigbag, :extra_granel,
            :super_3300_granel, :super_4200_granel, :silo19a, :silo19b,
            :silo20a, :silo20b, :silo21a, :silo21b, :silo22a, :silo22b,
            :silo27, :silo28, :especialsacos, :extrsacos, :bigbagextra,
            :bigbagextra1350, :bigbagextra1, :bigbagespecial, :bigbagsuper,
            :bigbagplus, :prodhaver, :prodvento, :otros, :ns30001, :ns30002, :prodbb,
            :ns30003, :nbb1, :nbb2, :nvento1, :nvento2, :nvento3, :callesilo28,
            :horas_haver, :horas_vento, :horas_bigbag,
            :callesplanta1, :callesilo27, :bigbag_extra_retiro, presence: true

  # Validación para silos 19, 20, 21, 22 y 27 - máximo 30
  validates :silo19a, :silo19b, :silo20a, :silo20b,
            :silo21a, :silo21b, :silo22a, :silo22b, :silo27,
            numericality: {
              less_than_or_equal_to: 30,
              greater_than_or_equal_to: 0,
              message: "debe estar entre 0 y 30"
            }

  # Validación específica para silo28 - máximo 20
  validates :silo28,
            numericality: {
              less_than_or_equal_to: 20,
              greater_than_or_equal_to: 0,
              message: "debe estar entre 0 y 20"
            }

  after_create :send_medidas_email

  # ============================================================
  # INDICADORES DE STOCK (Toneladas)
  # ============================================================

  def stock_extra_ton
    extra_silo =
      ((20 - silo28.to_f) * 100) +
      ((30 - ((silo21a.to_f + silo21b.to_f) / 2)) * 100) +
      ((30 - ((silo22a.to_f + silo22b.to_f) / 2)) * 100)

    extra_piso =
      (extrsacos || 0) +
      (bigbagextra || 0) +
      (bigbagextra1 || 0) +
      (bigbagextra1350 || 0)

    (extra_silo + extra_piso).to_i
  end

  def stock_especial_ton
    especial_silo = silo27 ? (30 - silo27.to_f) * 460 : 0
    especial_piso = (especialsacos || 0) + (bigbagespecial || 0)
    (especial_silo + especial_piso).to_i
  end

  def stock_s3300_ton
    ((30 - ((silo19a.to_f + silo19b.to_f) / 2)) * 100).to_i
  end

  def stock_s4200_ton
    s4200_silo = ((30 - ((silo20a.to_f + silo20b.to_f) / 2)) * 100).to_i
    s4200_piso = (bigbagsuper || 0)
    s4200_silo + s4200_piso
  end

  def stock_total_ton
    stock_extra_ton + stock_especial_ton + stock_s3300_ton + stock_s4200_ton
  end

  # ============================================================
  # DESPACHOS (Ton por registro)
  # ============================================================

  def desp_especial_sacos_ton
    (especial_sacos || 0)
  end

  def desp_extra_sacos_ton
    (extra_sacos || 0)
  end

  def desp_especial_bigbag_ton
    (especial_bigbag || 0)
  end

  def desp_extra_bigbag_ton
    (extra_bigbag || 0)
  end

  def desp_especial_granel_ton
    (especial_granel || 0)
  end

  def desp_extra_granel_ton
    (extra_granel || 0)
  end

  def desp_s3300_granel_ton
    (super_3300_granel || 0)
  end

  def desp_s4200_granel_ton
    (super_4200_granel || 0)
  end

  # ============================================================
  # RENDIMIENTOS (Ton/h) – por si los quieres usar después
  # ============================================================

  def haver_rend_ton_h
    return 0 if horas_haver.to_f <= 0
    (prodhaver.to_f * 0.025 / horas_haver.to_f).round(0)
  end

  def ventomatic_rend_ton_h
    return 0 if horas_vento.to_f <= 0
    (prodvento.to_f * 0.025 / horas_vento.to_f).round(0)
  end

  def bigbag_rend_ton_h
    return 0 if horas_bigbag.to_f <= 0
    (prodbb.to_f * 1.5 / horas_bigbag.to_f).round(0)
  end

  private

  def send_medidas_email
    UserMailer.with(user: self).medidas.deliver_now
  end
end
