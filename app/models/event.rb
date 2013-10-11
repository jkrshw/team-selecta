class Event < ActiveRecord::Base
  belongs_to :club
  has_many :guests
  has_many :users, through: :event_users
end
