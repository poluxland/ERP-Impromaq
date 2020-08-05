class PermisosController < InheritedResources::Base

  private

    def permiso_params
      params.require(:permiso).permit(:desde, :hasta, :cantidad, :periodo, :otros, :personal_id)
    end

end
