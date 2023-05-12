class ServiciosController < InheritedResources::Base

  private

    def servicio_params
      params.require(:servicio).permit(:cas, :nfu, :apoyo_cas, :kkbc_a_p2, :kka_a_ngp, :kka_a_p1, :yeso_a_silo, :conchuela_a_bru, :escombros, :residuos, :barrido_industrial, :retiro_derrames, :aspirado, :cementos, :transportador, :materia_prima, :harneo_o_seleccion, :recarga, :molino, :descarga, :ton, :lavado_cont, :retiro_escombros, :cloracion, :ol01, :ol02, :ol09, :ol10, :ex01, :ok05, :ok04, :barr12, :bbc20, :h12, :ca, :comentarios)
    end

end
