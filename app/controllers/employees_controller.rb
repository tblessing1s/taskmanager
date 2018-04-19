class EmployeesController < ApplicationController
  before_action :require_signin, except: [:index]
  before_action :require_manager, except: [:index, :show]
  before_action :set_employee, except: [:index, :new, :create]

  def index
    @employees = Employee.all
  end

  def show
    @tasks = @employee.tasks
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to employees_path, notice: "New Employee Added"
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee Updated"
    else
      render :new
    end
  end

  def destroy
    @employee.destroy
    session[:employee_id] = nil
    redirect_to employees_path, notice: 'Employee Deleted'
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end
    def employee_params
      params.require(:employee).permit(:name, :email, :phone, :time, :password, :password_confirmation, :manager)
    end
    def require_correct_employee
      redirect_to employees_path unless current_employee?(@employee)
    end

end
