class Booking < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :time_slots
  belongs_to :user
end
