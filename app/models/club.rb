class Club < ActiveRecord::Base
  has_many :hubs, through: :affilaitions
  has_many :users, through: :members
  has_many :events
end
