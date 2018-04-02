class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def edit
    @task = Task.find(params[:id])
  end
  def update
    @task = Task.find(params[:id])
      if @task.update(task_params)
        redirect_to tasks_path, notice: "Task Updated"
      else
        render :new
      end
  end
  def destroy
    @task = Task.find(params[:id])
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
  def task_params
    params.require(:task).
      permit(:title, :description, :lot, :reoccuring, :due)
  end
end