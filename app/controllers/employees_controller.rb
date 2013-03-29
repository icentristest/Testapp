class EmployeesController < ApplicationController
  
  
  def index
    @employee = Employee.all
  end
  def new 
    @employee=Employee.new
  end
  
  def create
   @employee = Employee.new(params[:employee])
    if @employee.save
    render  "admin/employeelist" , :notice=> "your record saved in DB"
    else
      render "new"
   end
  end
  def edit
    @employee =Employee.find(params[:id])
  end
end
