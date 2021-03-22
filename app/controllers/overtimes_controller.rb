class OvertimesController < InheritedResources::Base

  private

    def overtime_params
      params.require(:overtime).permit(:inicio, :termino, :personal_id, :cantidad, :motivo)
    end

end
