class TasksController < ApplicationController
  before_action :require_signin, except: [:index]
  before_action :require_manager, except: [:index, :show]
  before_action :set_task, except: [:index, :new, :create]

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
      permit(:title, :description, :lot, :reoccuring, :due, :employee_id, :completed)
  end
end
