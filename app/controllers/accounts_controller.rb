class AccountsController < ApplicationController

	def index
		@accounts = Account.all
	end

	def show
		@account = Account.find(params[:id])
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new(params[:account].permit(:name, :address ))
		if @account.save
			redirect_to @account
		else
			render 'new'
		end
	end

	def edit
		@account = Account.find(params[:id])
	end

	def update

		@account = Account.find(params[:id])
		if @account.update(params[:account].permit(:name, :address ))
			redirect_to @account
		else
			render 'edit'
		end
	end
end
