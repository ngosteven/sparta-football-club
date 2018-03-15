class TeamsController < ApplicationController
	has_many :players
	has_one :manager
end
