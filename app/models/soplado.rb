class Soplado < ApplicationRecord
   after_create :send_soplados_email

    private

    def send_soplados_email
      UserMailer.with(user: self).soplados.deliver_now
    end

end
