class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def show
		@contact = Contact.find(params[:id])
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(params[:contact].permit(:title, :first_name, :last_name, :cell_phone, :email, :account_id ))
		if @contact.save
			redirect_to @contact
		else
			render 'new'
		end
	end

	def edit
		@contact = Contact.find(params[:id])
	end

	def update

		@contact = Contact.find(params[:id])
		if @contact.update(params[:contact].permit(:title, :first_name, :last_name, :cell_phone,  :email, :account_id ))
			redirect_to @contact
		else
			render 'edit'
		end
	end


	def to_s
		"#{@client.last_name}"
	end
end
