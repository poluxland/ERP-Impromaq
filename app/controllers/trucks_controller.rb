class TrucksController < InheritedResources::Base
  def show
    @truck = Truck.find(params[:id])
    @checklists = @truck.checklists.order(created_at: :desc).limit(10)
    @equipos = @truck.equipos.order(created_at: :desc).limit(10)
    @mantencions = @truck.mantencions.order(created_at: :desc).limit(10)
    @interventions = @truck.interventions.order(created_at: :desc).limit(10)
  end

  private

    def truck_params
      params.require(:truck).permit(:codigo, :marca, :modelo, :planta, :año, :otros)
    end

end
