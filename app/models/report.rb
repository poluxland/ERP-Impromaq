class Report < ApplicationRecord
  # Validation for each field to ensure presence and only allow positive values for integers
  validates :especial_sacos, :extra_sacos, :especial_soluble, :extra_soluble,
            :bb_especial, :bb_extra, :prod_esp_sacos, :prod_extra_sacos,
            :prod_extra_soluble, :prod_esp_bb, :prod_extra_bb, :envases_esp,
            :envases_ext, :envases_bb, :pallets_buenos, :muestra_pallets,
            :humedad_promedio, :bobinas, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :observaciones, presence: true

  after_create :send_reports_email

  private

  def send_reports_email
    UserMailer.with(user: self).reports.deliver_now
  end
end
