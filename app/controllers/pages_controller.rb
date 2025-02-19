class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def estadoequipos
    @trucks = Truck.includes(:checklist, :equipo, :intervention).all
    @trucks_ptm = @trucks.where(planta: 'PTM')
    @trucks_lca = @trucks.where.not(planta: 'PTM')
  end

  def reporte
  @prodhaver_tm = Medida.where(turno: "TM").group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tt = Medida.where(turno: "TT").group_by_day(:created_at).sum(:prodhaver)
  @prodhaver_tn = Medida.where(turno: "TN").group_by_day(:created_at).sum(:prodhaver)
end



end
