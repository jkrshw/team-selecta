class Hub < ActiveRecord::Base
	has_many :clubs, through: :affiliations
end
