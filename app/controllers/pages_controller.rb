class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def estadoequipos
    @trucks = Truck.includes(:checklist, :equipo, :intervention).all
    @trucks_ptm = @trucks.where(planta: 'PTM')
    @trucks_lca = @trucks.where.not(planta: 'PTM')
  end
end
