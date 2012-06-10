class AddUserAndTimeSlotToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :user_id, :integer
    add_column :bookings, :time_slot_id, :integer
  end
end
