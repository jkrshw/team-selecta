class AdminMembership < ActiveRecord::Base
  belongs_to :club
  belongs_to :hub
  belongs_to :user
end
