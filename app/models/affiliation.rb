class Affiliation < ActiveRecord::Base
  belongs_to :hub
  belongs_to :club
end