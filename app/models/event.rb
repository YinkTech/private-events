class Event < ApplicationRecord
  belongs_to :organizer, :class_name => "User"
  has_many :attendances, :foreign_key => "attended_event_id", class_name: "Attendance"
  has_many :attendees, :through => :attendances, :source => :attendee


end
