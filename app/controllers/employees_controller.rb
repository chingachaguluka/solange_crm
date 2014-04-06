class EmployeesController < ApplicationController

	def index
		@employees = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(params[:employee].permit(:title, :first_name, :last_name, :cell_phone1, :cell_phone2, :address, :city, :country, :email, :employment_number, :date_of_birth, :engaged_on, :terminated_on, :employee_status_id, :temporary, :under_probation, :next_of_kin, :next_of_kin_phone, :next_of_kin_email, :next_of_kin_address, :position, :status ))
		if @employee.save
			flash[:notice] = "Employee Created"
			redirect_to @employee
		else
			render 'new'
		end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def update

		@employee = Employee.find(params[:id])
		if @employee.update(params[:employee].permit(:title, :first_name, :last_name, :cell_phone1, :cell_phone2, :address, :city, :country, :email, :employment_number, :date_of_birth, :engaged_on, :terminated_on, :employee_status_id, :temporary, :under_probation, :next_of_kin, :next_of_kin_phone, :next_of_kin_email, :next_of_kin_address, :position, :status ))
			flash[:notice] = "Employee Updated"
			redirect_to @employee
		else
			render 'edit'
		end
	end

	def destroy
		Employee.find(params[:id]).destroy
		flash[:notice] = "Employee Deleted"
		redirect_to clients_url
	end


	def to_s
		"#{@employee.last_name}"
	end

end
