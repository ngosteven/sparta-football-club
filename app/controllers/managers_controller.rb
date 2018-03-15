class ManagersController < ApplicationController

	def index
		@manager = Manager.all
		render :index
	end

	def new
		@manager = Manager.new
		render :new
	end

	def create
		@manager = Manager.new(manager_params)
		if(@manager.save)
			redirect_to "/"
		end
	end

	def edit
		@manager = Manager.find(params[:id].to_i)
		render :edit
	end

	def show
		@manager = Manager.find(params[:id].to_i)
		render :show
	end
	
	def manager_params

		params.require(:manager).permit(:name)

	end

	def update
		id = params[:id]
		@manager = Manager.find(params[:id].to_i)

		@manager.update(manager_params)

		redirect_to "/"
	end

	def destroy

		@manager = Manager.find(params[:id].to_i)

		@manager.delete

		redirect_to "/"
	end

end
