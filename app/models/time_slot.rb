class TimeSlot < ActiveRecord::Base
  attr_accessible :from, :to

  belongs_to :working_place
  belongs_to :user

end
