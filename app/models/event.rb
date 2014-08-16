class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User"
  has_many :attendees, through: :attendances
  has_many :attendances, foreign_key: :attended_event_id

end