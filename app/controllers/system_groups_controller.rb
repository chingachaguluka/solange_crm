class SystemGroupsController < ApplicationController

	def index
		@system_groups = SystemGroup.all
	end

	def show
		@system_group = SystemGroup.find(params[:id])
	end

	def new
		@system_group = SystemGroup.new
	end

	def create
		@system_group = SystemGroup.new(params[:system_group].permit(:name))
		if @system_group.save
			flash[:notice] = "System Group Created"
			redirect_to @system_group
		else
			render 'new'
		end
	end

	def edit
		@system_group = SystemGroup.find(params[:id])
	end

	def update

		@system_group = SystemGroup.find(params[:id])
		if @system_group.update(params[:system_group].permit(:name ))
			flash[:notice] = "System Group Updated"
			redirect_to @system_group
		else
			render 'edit'
		end
	end

	def destroy
		SystemGroup.find(params[:id]).destroy
		redirect_to system_groups_url
	end

end
