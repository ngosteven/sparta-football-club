class TeamsController < ApplicationController

	def index
		@team = Team.all
		render :index
	end

	def new
		@team = Team.new
		render :new
	end

	def create
		@team = Team.new(team_params)
		if(@team.save)
			redirect_to "/"
		end
	end

	def edit
		@team = Team.find(params[:id].to_i)
		render :edit
	end

	def show
		@team = Team.find(params[:id].to_i)
		render :show
	end
	
	def team_params

		params.require(:team).permit(:name, :manager_id, :player_id)

	end

	def update
		id = params[:id]
		@team = Team.find(params[:id].to_i)

		@team.update(team_params)

		redirect_to "/"
	end

	def destroy

		@team = Team.find(params[:id].to_i)

		@team.delete

		redirect_to "/"
	end

end
