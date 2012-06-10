class CreateWorkingPlaces < ActiveRecord::Migration
  def change
    create_table :working_places do |t|
      t.integer :timeslot_id
      t.integer :place_nr

      t.timestamps
    end
  end
end
