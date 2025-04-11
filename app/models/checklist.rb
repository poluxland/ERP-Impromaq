class Checklist < ApplicationRecord
    belongs_to :truck

    def self.send_yesterdays_report
    UserMailer.daily_checklist_report.deliver_now
    end

end
