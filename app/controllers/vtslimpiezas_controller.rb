class VtslimpiezasController < InheritedResources::Base
skip_before_action :authenticate_user!, only: [:create, :show, :new]

  private

    def vtslimpieza_params
      params.require(:vtslimpieza).permit(:nombre, :fecha, :turno, :pesamatic, :camarin, :baño, :comedor, :botoneras, :baranda, :asiento, :mesa_computador, :mesa_comedor, :comentarios)
    end

end
