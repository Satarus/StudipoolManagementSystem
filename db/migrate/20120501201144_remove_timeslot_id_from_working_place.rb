class RemoveTimeslotIdFromWorkingPlace < ActiveRecord::Migration
  def up
    remove_column :working_places, :timeslot_id
  end

  def down
  end
end
