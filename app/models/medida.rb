class Medida < ApplicationRecord
  validates :enjuagues_super, :plastificado_especial, :plastificado_especial_lados,
            :plastificado_especial_zunchos, :plastificado_extra,
            :plastificado_extra_zunchos, :especial_sacos, :especial_bigbag,
            :especial_granel, :extra_sacos, :extra_bigbag, :extra_granel,
            :super_3300_granel, :super_4200_granel, :silo19a, :silo19b,
            :silo20a, :silo20b, :silo21a, :silo21b, :silo22a, :silo22b,
            :silo27, :silo28, :especialsacos, :extrsacos, :bigbagextra,
            :bigbagextra1350, :bigbagextra1, :bigbagespecial, :bigbagsuper,
            :bigbagplus, :prodhaver, :prodvento, :otros, :ns30001, :ns30002,
            :ns30003, :nbb1, :nbb2, :nvento1, :nvento2, :nvento3, :callesilo28,
            :callesplanta1, :callesilo27, presence: true

  after_create :send_medidas_email

  private

  def send_medidas_email
    UserMailer.with(user: self).medidas.deliver_now
  end
end
