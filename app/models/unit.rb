class Unit < ApplicationRecord

after_create :send_units_email

    private

    def send_units_email
      UserMailer.with(user: self).units.deliver_now
    end



end
