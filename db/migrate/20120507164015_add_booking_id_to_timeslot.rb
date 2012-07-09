class AddBookingIdToTimeslot < ActiveRecord::Migration
  def change
    add_column :time_slots, :booking_id, :integer
  end
end
