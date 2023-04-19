class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
      @trucks = Truck.includes(:checklist, :equipo, :intervention).all
  end
end
