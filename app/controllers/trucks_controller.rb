class TrucksController < InheritedResources::Base

  private

    def truck_params
      params.require(:truck).permit(:codigo, :marca, :modelo, :planta, :año, :otros)
    end

end
