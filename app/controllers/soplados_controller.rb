class SopladosController < InheritedResources::Base
  skip_before_action :authenticate_user!, only: [:create, :show, :new]

  private

    def soplado_params
      params.require(:soplado).permit(:supervisor, :fecha, :presion1, :presion2, :presion3, :presion4, :presion5, :presion6, :observaciones, :horno, :jetin, :mirillas, :so3, :tiempo)
    end

end
