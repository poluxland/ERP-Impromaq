class Hora < ApplicationRecord
  self.skip_time_zone_conversion_for_attributes = [:inicio, :termino]

  def self.enviar_reporte_horas_pendientes
    UserMailer.horas_pendientes_revision.deliver_now
  end
end