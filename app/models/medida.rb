class Medida < ApplicationRecord
  after_create :send_medidas_email

    private

    def send_medidas_email
      UserMailer.with(user: self).medidas.deliver_now
    end



end
