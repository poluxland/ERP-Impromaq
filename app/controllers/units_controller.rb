class UnitsController < InheritedResources::Base
skip_before_action :authenticate_user!, only: [:create, :show, :new]

  private

    def unit_params
      params.require(:unit).permit(:o11, :o12, :o13, :o14, :o15, :o16, :o17, :o18, :o21, :o22, :o23, :o24, :o25, :o26, :o27, :o28, :o31, :o32, :o33, :o34, :o35, :o36, :o37, :o38, :o41, :o42, :o43, :o44, :o45, :o46, :o47, :o48, :o51, :o52, :o53, :o54, :o55, :o56, :o57, :o58, :o61, :o62, :o63, :o64, :o65, :o66, :o67, :o68, :o71, :o72, :o73, :o74, :o75, :o76, :o77, :o78, :o81, :o82, :o83, :o84, :o85, :o86, :o87, :o88, :b11, :b12, :b13, :b14, :b15, :b16, :b17, :b18, :b21, :b22, :b23, :b24, :b25, :b26, :b27, :b28, :b31, :b32, :b33, :b34, :b35, :b36, :b37, :b38, :b41, :b42, :b43, :b44, :b45, :b46, :b47, :b48, :b51, :b52, :b53, :b54, :b55, :b56, :b57, :b58, :b61, :b62, :b63, :b64, :b65, :b66, :b67, :b68, :b71, :b72, :b73, :b74, :b75, :b76, :b77, :b78, :h11, :h12, :h13, :h14, :h15, :h16, :h17, :h18, :h21, :h22, :h23, :h24, :h25, :h26, :h27, :h28, :h31, :h32, :h33, :h34, :h35, :h36, :h37, :h38, :h41, :h42, :h43, :h44, :h45, :h46, :h47, :h48, :h51, :h52, :h53, :h54, :h55, :h56, :h57, :h58, :h61, :h62, :h63, :h64, :h65, :h66, :h67, :h68, :h71, :h72, :h73, :h74, :h75, :h76, :h77, :h78, :observaciones)
    end

end
