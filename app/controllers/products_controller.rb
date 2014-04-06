class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params[:product].permit(:name, :description, :selling_price, :is_service, :product_category_id ))
		if @product.save
			flash[:notice] = "Product Created"
			redirect_to @product
		else
			render 'new'
		end
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update

		@product = Product.find(params[:id])
		if @product.update(params[:product].permit(:name, :description, :selling_price, :is_service, :product_category_id ))
			flash[:notice] = "Product Updated"
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		Product.find(params[:id]).destroy
		redirect_to products_url
	end
end
