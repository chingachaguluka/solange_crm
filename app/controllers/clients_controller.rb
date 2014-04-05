class ClientsController < ApplicationController
	
	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(params[:client].permit(:title, :first_name, :last_name, :cell_phone1, :cell_phone2, :address, :city, :country, :email, :account_id ))
		if @client.save
			flash[:notice] = "Client Created"
			redirect_to @client
		else
			render 'new'
		end
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update

		@client = Client.find(params[:id])
		if @client.update(params[:client].permit(:title, :first_name, :last_name, :cell_phone1, :cell_phone2, :address, :city, :country, :email, :account_id ))
			flash[:notice] = "Client Updated"
			redirect_to @client
		else
			render 'edit'
		end
	end

	def destroy
		Client.find(params[:id]).destroy
		flash[:notice] = "Client Deleted"
		redirect_to clients_url
	end


	def to_s
		"#{@client.last_name}"
	end

end
