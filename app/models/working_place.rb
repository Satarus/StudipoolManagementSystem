class WorkingPlace < ActiveRecord::Base
  attr_accessible :place_nr 

  has_many :time_slots

  def has_time_slots?
    return !time_slots.empty?
  end

  def create_time_slots
    for i in 1..5 do
      for j in 8...20 do
        time_slot = TimeSlot.create({:from => j, :to => j+1})
        time_slot.working_place_id = self.id
        time_slot.day = i
        time_slot.save
      end
    end
  end

  def is_bookable?
    time_slot = self.get_current_time_slot
    if time_slot != nil && time_slot.user != nil
      if time_slot.user.nickname == nil
        return true 
      else
        return false
      end
    else
      return true
    end
  end

  def get_day_time_slots(day=nil)
    unless day != nil
      return self.time_slots.where(:day => Time.now.wday)
    else
      return self.time_slots.where(:day => day)
    end
  end

  def get_current_time_slot
    actual_hour = Time.now.hour
    return self.time_slots.select {|t| t.from >= actual_hour && actual_hour <= t.to}.first
  end
end
