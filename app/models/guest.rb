class Guest < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  belongs_to :attending_state
end