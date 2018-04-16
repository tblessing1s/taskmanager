class TasksController < ApplicationController
<<<<<<< HEAD
  before_action :require_signin, except: [:index, :new, :edit, :create, :update]
  before_action :require_manager
=======
  before_action :require_signin, except: [:index]
  before_action :require_manager, except: [:index, :show]
  before_action :set_task, except: [:index, :new, :create]
>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b

  def index
    @tasks = Task.all
  end

  def show
    @comments = @task.comments
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def update
      if @task.update(task_params)
        redirect_to tasks_path, notice: "Task Updated"
      else
        render :new
      end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, notice: 'Task Deleted'
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @task, notice: "Task Successfully Created!"
    else
      render :new
    end
  end

private
  def set_task
    @task = Task.find(params[:id])
  end
  def task_params
    params.require(:task).
<<<<<<< HEAD
      permit(:title, :description, :lot, :reoccuring, :due, :employee_id)
=======
      permit(:title, :description, :lot, :reoccuring, :due, :employee_id, :completed)
>>>>>>> 517ac87b0e3ebf309e92bff9916d8ecefebfcc5b
  end
end
