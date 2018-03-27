class SessionsController < ApplicationController
  def new
  end

  def create
    if employee = Employee.authenticate(params[:email], params[:password])
     session[:employee_id] = employee.id
     flash[:notice] = "Welcome back, #{employee.name}!"
     redirect_to(session[:intended_url] || employee)
    session[:intended_url] = nil
   else
     flash.now[:alert] = "Invalid email/password combination!"
    render :new
   end
  end

  def destroy
  session[:employee_id] = nil
  redirect_to employees_url, notice: "You're now signed out!"
end
end
