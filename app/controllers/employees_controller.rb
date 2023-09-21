class EmployeesController < ApplicationController 
 before_action :set_employee, only: [:edit, :update, :show, :destroy]

 def index
    @employees = Employee.all
 end

 def new
   @employee = Employee.new
   @employee.documents.build
 end

 def create
   @employee = Employee.new(employee_params)
   if @employee.save
    redirect_to employees_path, notice: 'Details had filled successfully'
   else
    render :new
   end
 end
 def edit
 end
 def update
  if @employee.update(employee_params)
    redirect_to employees_path, notice: 'employee has been  update '
  else
    render :edit
  end
 end
 def show
  @employee = Employee.find(params[:id])
  @document = @employee.documents
  
 end
 def destroy
  if @employee.destroy
    redirect_to employees_path, notice: 'Employee delete Succesfully '
  else 
    redirect_to employees_path, notice: 'Employee not delete '
  end
 end
 private

 def employee_params
   params.require(:employee).permit(:first_name,:middle_name,:last_name,:personal_emails,:city,:state,:country,:pincode,:address_line1,:address_line2)
 end 
 def set_employee
  @employee = Employee.find(params[:id])
 end
end
