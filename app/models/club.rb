class Club < ActiveRecord::Base
  has_many :hubs, through: :affilaitions
end
