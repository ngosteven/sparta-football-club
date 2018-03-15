class Manager < ApplicationRecord
	has_many :players
	belongs_to :team
end
