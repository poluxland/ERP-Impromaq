class PersonalsController < InheritedResources::Base

  private

    def personal_params
      params.require(:personal).permit(:rut, :dv, :nombre, :contratado, :evaluacion, :comentarios)
    end

end
