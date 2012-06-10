class AddBookingIdToTimeslot < ActiveRecord::Migration
  def change
    add_column :timeslots, :booking_id, :integer
  end
end
