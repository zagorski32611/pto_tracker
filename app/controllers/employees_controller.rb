class EmployeesController < ApplicationController
    before_action :authenticate_employee!

  before_action :current_employee,   only: [:edit, :update, :show, :index]


  def show
    @employee = Employee.find(current_employee.id)
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
    employeeMailer.account_activation(@employee).deliver_now
    flash[:info] = "Please check your email to activate your account"
    redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "employee deleted"
    redirect_to employees_url
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      flash[:success] = 'Profile Updated!'
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def index
    if current_employee
        @employees = Employee.all
    else
      redirect_to new_employee_session_path, notice: 'You are not logged in.'
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:id, :email, :first_name, :last_name, :password,
                                 :password_confirmation, :total_pto)
end
end
