class EmployeesController < ApplicationController
  def index
    if params[:team_id]
      @employees = Employee.find_by_team_id(params[:team_id])
    else
      @employees = Employee.all
    end
  end

  def new
    @employee = Employee.new
    @employee.build_profile
  end

  def create
    @employee = Employee.new(params[:employee])

    if @employee.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    #@employee.profile_attributes.build
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update_attributes(params[:employee])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end
end