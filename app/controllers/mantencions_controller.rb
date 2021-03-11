class MantencionsController < InheritedResources::Base

  private

    def mantencion_params
      params.require(:mantencion).permit(:equipo, :desde, :hasta, :mecanico, :descripcion, :repuestos, :truck_id)
    end

end
