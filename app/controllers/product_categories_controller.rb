class ProductCategoriesController < ApplicationController

	def index
		@product_categories = ProductCategory.all
	end

	def show
		@product_category = ProductCategory.find(params[:id])
	end

	def new
		@product_category = ProductCategory.new
	end

	def create
		@product_category = ProductCategory.new(params[:product_category].permit(:name, :description ))
		if @product_category.save
			flash[:notice] = "Product Category Created"
			redirect_to @product_category
		else
			render 'new'
		end
	end

	def edit
		@product_category = ProductCategory.find(params[:id])
	end

	def update

		@product_category = ProductCategory.find(params[:id])
		if @product_category.update(params[:product_category].permit(:name, :description ))
			flash[:notice] = "Product Category Updated"
			redirect_to @product_category
		else
			render 'edit'
		end
	end

	def destroy
		ProductCategory.find(params[:id]).destroy
		redirect_to product_categories_url
	end
end
