class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def require_signin
    unless current_employee
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Please sign in first!"
    end
  end

  def current_employee
    @current_employee ||= Employee.find(session[:employee_id]) if session[:employee_id]
  end

  helper_method :current_employee

  def current_employee?(employee)
  current_employee == employee
end

helper_method :current_employee?

def require_manager
  unless current_employee_manager?
    redirect_to employees_url, alert: "Unauthorized access!"
  end
end

def current_employee_manager?
  current_employee && current_employee.manager?
end

helper_method :current_employee_manager?
end
