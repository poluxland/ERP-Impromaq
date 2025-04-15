class Equipo < ApplicationRecord
  belongs_to :truck

  validates :c1, :c2, :c3, :c4, :c5, :c6, :c7, :c8, :c9, :c10,:c11, :c12, :c13, :c14, :c15, :c16, :operador, :horometro, :c17, presence: true

def self.send_yesterdays_report
  UserMailer.daily_equipos_report.deliver_now
end

def self.send_yesterdays_report_ptm
  UserMailer.daily_equipos_report_ptm.deliver_now
end


end
