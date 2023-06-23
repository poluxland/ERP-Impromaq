class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
      @trucks = Truck.includes(:checklist, :equipo, :intervention).all
      @trucks_ptm = @trucks.where(modelo: 'PTM')
      @trucks_lca = @trucks.where.not(modelo: 'PTM')
  end
end
