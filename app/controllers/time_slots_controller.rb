class TimeSlotsController < ApplicationController
  def new
    @time_slot = TimeSlot.new
  end

  def create
    @time_slot = TimeSlot.create(params[:time_slot])
    @time_slot.user = current_user
    @time_slot.working_place_id = params[:id]
    puts "TimeSlot to save: #{@time_slot.inspect}" 
    if @time_slot.save
      redirect_to working_place_path(params[:id])
    else
      redirect_to working_place_new_time_slot_path(params[:id])
    end
  end
end
