class Guest < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_one :attending_state
end