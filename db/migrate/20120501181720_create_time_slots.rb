class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.integer :working_place_id
      t.integer :from, :null => false
      t.integer :to, :null => false
      t.integer :user_id

      t.timestamps
    end
  end
end
