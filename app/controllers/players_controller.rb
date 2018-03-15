class PlayersController < ApplicationController

	def index
		@player = Player.all
		render :index
	end

	def new
		@player = Player.new
		render :new
	end

	def create
		@player = Player.new(player_params)
		if(@player.save)
			redirect_to "/"
		end
	end

	def edit
		@player = Player.find(params[:id].to_i)
		render :edit
	end

	def show
		@player = Player.find(params[:id].to_i)
		render :show
	end
	
	def player_params

		params.require(:player).permit(:name, :team_id, :position, :number)

	end

	def update
		id = params[:id]
		@player = Player.find(params[:id].to_i)

		@player.update(player_params)

		redirect_to "/"
	end

	def destroy

		@player = Player.find(params[:id].to_i)

		@player.delete

		redirect_to "/"
	end

end
