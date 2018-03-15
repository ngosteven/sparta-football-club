class PlayersController < ApplicationController
	belongs_to :team
	belongs_to :manager
end
