class ManagersController < ApplicationController
	has_many :players
	belongs_to :team
end
