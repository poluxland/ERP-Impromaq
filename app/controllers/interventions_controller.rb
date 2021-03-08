class InterventionsController < InheritedResources::Base

  private

    def intervention_params
      params.require(:intervention).permit(:equipo, :desde, :hasta, :mecanico, :descripcion, :repuestos)
    end

end
