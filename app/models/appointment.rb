class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates_time :start_time, between: ['11:00am', '5:00pm']
  validates_time :end_time, between: ['11:00am', '5:00pm']
end
