class SystemUsersController < ApplicationController
	
	def index
		@system_users = SystemUser.all
	end

	def show
		@system_user = SystemUser.find(params[:id])
	end

	def new
		@system_user = SystemUser.new
	end

	def create
		@system_user = SystemUser.new(params[:system_user].permit(:username, :password, :disabled, :employee_id, :system_group_id ))
		if @system_user.save
			flash[:notice] = "System User Created"
			redirect_to @system_user
		else
			render 'new'
		end
	end

	def edit
		@system_user = SystemUser.find(params[:id])
	end

	def update

		@system_user = SystemUser.find(params[:id])
		if @system_user.update(params[:system_user].permit(:username, :password, :disabled, :employee_id, :system_group_id ))
			flash[:notice] = "System User Updated"
			redirect_to @system_user
		else
			render 'edit'
		end
	end

	def destroy
		SystemUser.find(params[:id]).destroy
		flash[:notice] = "System User Deleted"
		redirect_to clients_url
	end


end
