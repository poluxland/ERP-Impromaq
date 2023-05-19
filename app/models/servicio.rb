class Servicio < ApplicationRecord

  after_create :send_units_email

    private

    def send_units_email
      UserMailer.with(user: self).servicios.deliver_now
    end

end
