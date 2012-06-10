class RemoveTimeSlotIdFromBooking < ActiveRecord::Migration
  def up
    remove_column :bookings, :time_slot_id
      end

  def down
    add_column :bookings, :time_slot_id, :integer
  end
end
