class AttendingState < ActiveRecord::Base
  has_many :event_users
end
