class Hora < ApplicationRecord
  def self.enviar_reporte_horas_pendientes
    UserMailer.horas_pendientes_revision.deliver_now
  end
end

