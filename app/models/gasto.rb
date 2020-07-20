class Gasto < ApplicationRecord
require 'csv'
require 'activerecord-import/base'
require 'activerecord-import/active_record/adapters/postgresql_adapter'

def self.my_import(file)
  gastos = []
  CSV.foreach(file.path, headers: true, col_sep: ';') do |row|
    gastos << Gasto.new(row.to_h)
  end
  Gasto.import gastos, recursive: true
end
end

# CSV.read('/..', {:headers => true, :col_sep => ';', :encoding => 'ISO-8859-1'})
