class AddDayToTimeSlot < ActiveRecord::Migration
  def change
    add_column :time_slots, :day, :integer
  end
end
