class WorkingPlacesController < ApplicationController
  def index
    @places = WorkingPlace.all
  end

  def show
    @place = WorkingPlace.find(params[:id], :include => [:time_slots])
    if params[:day] != nil
      @time_slots = @place.get_day_time_slots(params[:day])
    else
      @time_slots = @place.get_day_time_slots
    end
    @current_time_slot = @place.get_current_time_slot
  end
end

